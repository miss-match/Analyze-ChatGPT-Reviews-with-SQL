-- TEST
use missmatch;
select * from users;

-- 1. 현재 리뷰를 작성한 사용자들의 이메일 형식이 지정되어 있지 않아 데이터가 더럽습니다. 데이터를 직접 확인하고 제약 조건을 설정해주세요!
-- 이메일 형식에 맞지 않는 데이터 확인
SELECT *
FROM users
WHERE mail NOT REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,}$';

-- 이메일 형식을 지키지 않은 데이터 null 처리
UPDATE users
SET mail = NULL
WHERE mail NOT REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$';

-- 이메일 형식으로 검증할 수 있도록 user.email컬럼에 제약조건 설정
ALTER TABLE users
MODIFY mail VARCHAR(50)
CHECK (mail REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$' OR mail IS NULL);

-- 2. 광고 리뷰가 너무 많아! [”도박”, "돈", “사과티비”, "홀덤", "line"]가 담겨있는 스팸 리뷰를 삭제해야겠어.

-- 키워드가 포함된 리뷰(review.content) 검색
SELECT *
FROM reviews
WHERE content REGEXP '도박|돈|사과티비|홀덤|line';

-- 키워드가 포함된 리뷰컨텐츠를 가진 리뷰 삭제
DELETE FROM reviews WHERE content REGEXP '도박|돈|사과티비|홀덤|line';

-- 3. 나이대 별 부정적인 리뷰의 비율을 구해봐야겠어. (부정적 리뷰: 0~2점)
SELECT 
    CASE 
        WHEN u.age BETWEEN 10 AND 19 THEN '10대'
        WHEN u.age BETWEEN 20 AND 29 THEN '20대'
        WHEN u.age BETWEEN 30 AND 39 THEN '30대'
        WHEN u.age BETWEEN 40 AND 49 THEN '40대'
        WHEN u.age >= 50 THEN '50대 이상'
        ELSE '기타'
    END AS age_group,
    COUNT(CASE WHEN r.score BETWEEN 0 AND 2 THEN 1 END) AS negative_reviews,
    COUNT(*) AS total_reviews,
    ROUND(
        COUNT(CASE WHEN r.score BETWEEN 0 AND 2 THEN 1 END) / COUNT(*) * 100, 2
    ) AS negative_review_percentage
FROM 
    users u
JOIN 
    reviews r
ON 
    u.userId = r.userId
GROUP BY 
    age_group
ORDER BY 
    age_group;

-- 4. 한국 사람이 작성한 리뷰만 뽑아서 확인해봐야겠어. (country = KR)
select * from users;
SELECT userName, content
from users u join reviews r
on u.country = 'KR' and u.userId = r.userId

-- 5. 앱 버전별로 긍정적인 리뷰의 비율을 구해봐야겠어. (긍정적 리뷰: 3~5점)
SELECT
    reviewCreatedVersion as app_version,
    COUNT(CASE WHEN r.score BETWEEN 3 AND 5 THEN 1 END) AS positive_reviews,
    COUNT(*) AS total_reviews,
    ROUND(
        COUNT(CASE WHEN r.score BETWEEN 3 AND 5 THEN 1 END) / COUNT(*) * 100, 2
    ) AS positive_review_percentage
FROM users u JOIN reviews r
ON u.userId = r.userId
GROUP BY reviewCreatedVersion;

-- 6. 앱 버전 별, 추천수가 많은 순으로 리뷰를 찾아봐야겠어. 10개만 확인해봐야겠다.
SELECT * FROM reviews
WHERE
	reviewCreatedVersion = (
				SELECT reviewCreatedVersion
				FROM reviews
				GROUP BY reviewCreatedVersion
				ORDER BY MAX(thumbsUpCount) DESC LIMIT 1)
ORDER BY thumbsUpCount DESC LIMIT 10;

-- 7. 이 리뷰(review_id = 30) 작성한 사람의 다른 리뷰도 궁금한데? 찾아보자.
SELECT
    u.userName,
    score,
    content
FROM users u JOIN reviews r
ON u.userId = r.userId
where u.userId = (
	select userId
	from reviews
	where content='이 앱 정말 좋아요!'
);