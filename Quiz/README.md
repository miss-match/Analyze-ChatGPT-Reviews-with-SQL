# Quiz
## ☀️ Story
> 당신은 OpenAI의 뛰어난 개발팀의 일원으로, ChatGPT의 발전을 위해 노력하고 있습니다.
> 하지만 최근 상사에게 사용자들이 남긴 리뷰 데이터에 대한 분석이 미흡하다는 이유로 혼나는 일이 발생했습니다.
>
> 당신은 더 이상 소극적이지 않고, 데이터 분석에 최선을 다해 사용자들의 목소리를 귀 기울여야 합니다.
> 리뷰 데이터를 분석하기 위해 다양한 SQL 쿼리를 작성하기로 다짐했습니다.
## 🔌 DBConnection
<table>
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>IP</strong></td>
      <td>192.168.0.17</td>
    </tr>
    <tr>
      <td><strong>Database</strong></td>
      <td>missmatch</td>
    </tr>
    <tr>
      <td><strong>Table</strong></td>
      <td>users, reviews</td>
    </tr>
    <tr>
      <td><strong>ID</strong></td>
      <td>sq1qu1zu5er</td>
    </tr>
    <tr>
      <td><strong>Password</strong></td>
      <td>quizpassw0rd</td>
    </tr>
  </tbody>
</table>

## ℹ️ DBTables

### Users
<table border="1" style="border-collapse: collapse; margin: 0 auto;">
  <tr>
    <th>Column Name</th>
    <th>userId</th>
    <th>userName</th>
    <th>age</th>
    <th>gender</th>
    <th>country</th>
    <th>mail</th>
  </tr>
  <tr>
    <th>Data Type</th>
    <td>varchar(10)</td>
    <td>varchar(30)</td>
    <td>int</td>
    <td>char(1)</td>
    <td>varchar(10)</td>
    <td>varchar(30)</td>
  </tr>
  <tr>
    <th>Description</th>
    <td>작성자 ID</td>
    <td>이름</td>
    <td>나이</td>
    <td>성별</td>
    <td>국적</td>
    <td>이메일</td>
  </tr>
</table>

### Reviews
<table border="1" style="border-collapse: collapse; margin: 0 auto;">
  <tr>
    <th>Column Name</th>
    <th>reviewId</th>
    <th>content</th>
    <th>score</th>
    <th>thumbsUpCount</th>
    <th>reviewCreatedVersion</th>
    <th>at</th>
    <th>userId</th>
  </tr>
  <tr>
    <th>Data Type</th>
    <td>int</td>
    <td>varchar(500)</td>
    <td>int</td>
    <td>int</td>
    <td>varchar(255)</td>
    <td>date</td>
    <td>varchar(10)</td>
  </tr>
  <tr>
    <th>Description</th>
    <td>리뷰 ID</td>
    <td>리뷰 내용</td>
    <td>리뷰 점수</td>
    <td>추천 수</td>
    <td>리뷰 생성 버전</td>
    <td>리뷰 날짜</td>
    <td>작성자 ID</td>
  </tr>
</table>

</div>

## ✏ Learn 
### Regular Expression 

| **Expression** | **Description**                             | **Example**                       |
|----------|---------------------------------------------|-----------------------------------|
| `^`      | 문자열의 **시작**을 의미                     | `^hello`는 "hello"로 시작해야 함 |
| `$`      | 문자열의 **끝**을 의미                       | `world$`는 "world"로 끝나야 함   |
| `.`      | **아무 문자 하나**를 의미                    | `a.b`는 "acb", "a_b"와 매칭      |
| `[]`     | 괄호 안의 문자들 중 **하나와 일치**           | `[abc]`는 "a", "b", "c"와 매칭  |
| `-`      | 문자 범위를 정의                             | `[a-z]`는 "a"부터 "z"까지 매칭   |
| `+`      | 바로 앞의 패턴이 **1번 이상 반복**            | `a+`는 "a", "aa", "aaa" 등 매칭 |
| `*`      | 바로 앞의 패턴이 **0번 이상 반복**            | `a*`는 "", "a", "aa" 등 매칭    |
| `{m,n}`  | 패턴이 최소 `m`번, 최대 `n`번 반복됨          | `a{2,4}`는 "aa", "aaa", "aaaa"  |
| `\`      | 특수 문자를 문자 그대로 인식                  | `\.`는 마침표 자체를 의미       |


## ⁉️ Quiz

### DAY 1
> 현재 리뷰를 작성한 사용자들의 이메일 형식이 지정되어 있지 않아 데이터가 너무 더럽잖아! 데이터를 확인해보고 제약조건을 설정 해줘야겠다! 정확하지 않은 데이터는 지워야겠어.
>  - 이메일(users.eamil) 형식에 맞지 않는 데이터가 있는지 확인해보자.
>  - 이메일 형식을 지키지 않은 데이터 row를 지우면 참조오류가 발생하니 email 값을 null로 처리하자.
>  - 유저 생성 시 이메일 형식으로 검증할 수 있도록 user.email 컬럼에 제약조건(check문) 설정하자!

### DAY 2
광고 리뷰가 너무 많아!가 담겨있는 스팸 리뷰를 삭제해야겠어.
> - 리뷰(reviews.content)에서 \["도박", "돈", "사과티비", "홀덤", "line"\] 키워드가 포함된 리뷰가 있는지 확인해보자.
> - 리뷰 컨텐츠에 스팸으로 판단되는 단어가 포함되어 있다면 해당 리뷰(review)를 삭제(delete)하자.

### DAY 3
나이대 별 부정적인 리뷰의 비율을 구해봐야겠어.
> - 리뷰 평가(revies.score)가 0 ~ 2 점인 리뷰가 몇개 있는지 확인해보자.
> - 나이대(users.age)별로 작성된 리뷰가 몇개인지 확인해보자 (group by 사용).
> - 나이대별 작성된 리뷰에서 부정적인 리뷰의 비율을 구해보자. (부정적 리뷰: 0~2점)

### DAY 4
한국 사람이 작성한 리뷰만 뽑아서 확인해봐야겠어.
> - 유저들의 거주국가(users.country)가 어딘지 확인해보자.
> - 한국사람('KR')이 작성한 리뷰를 출력해보자.

### DAY 5
앱 버전별로 긍정적인 리뷰의 비율을 구해봐야겠어.
> - 리뷰 평가(revies.score)가 3 ~ 5 점인 리뷰가 몇개 있는지 확인해보자. 
> - 앱 버전(reviews.reviewCreatedVersion)별로 작성된 리뷰가 몇개인지 확인해보자 (group by 사용).
> - 앱 버전 작성된 리뷰에서 긍정적인 리뷰의 비율을 구해보자. (긍정적 리뷰: 3~5점)

### DAY 6
추천수가 가장 많은 리뷰의 앱 버전을 찾고, 그 앱 버전의 추천수가 높은 상위 10개 리뷰를 확인하고 싶어!
> - 앱 버전(reviews.reviewCreatedVersion)별로 추천수(reviews.thumbsUpCount)의 최댓값을 출력해보자.
> - 추천수의 최댓값이 가장 높은 앱 버전의 리뷰를 출력해보자.
> - 추천수의 최댓값이 가장 높은 앱 버전의 리뷰를 추천수로 내림차순 정렬하여 10개만 뽑아보자.

### DAY 7
이 리뷰("정말 유용한 앱이에요!")를 작성한 사람의 다른 리뷰도 궁금한데? 찾아보자.
> - ("정말 유용한 앱이에요!", reviews.content)에 해당되는 리뷰들을 뽑아보자.
> - 리뷰들을 작성한 사람들의 아이디(users.userId)을 출력해보자.
> - 위에 출력된 유저 아이디를 사용하는 사람이 작성한 다른 리뷰들을 출력해보자.

## **👉️[정답 보러가기](https://github.com/miss-match/Analyze-ChatGPT-Reviews-with-SQL/blob/main/Quiz/answer.sql)👈**
