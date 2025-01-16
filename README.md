# Analyze-OpenAI-Reviews-with-SQL
## ☀️Story
> 당신은 OpenAI의 뛰어난 개발팀의 일원으로, ChatGPT의 발전을 위해 노력하고 있습니다.
> 하지만 최근 상사에게 사용자들이 남긴 리뷰 데이터에 대한 분석이 미흡하다는 이유로 혼나는 일이 발생했습니다.
>
> 당신은 더 이상 소극적이지 않고, 데이터 분석에 최선을 다해 사용자들의 목소리를 귀 기울여야 합니다.
> 리뷰 데이터를 분석하기 위해 다양한 SQL 쿼리를 작성하기로 다짐했습니다.
## 🔌DBConnection
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

## ℹ️DBTables
### Users
<table border="1" style="border-collapse: collapse; text-align: center; width: 100%;">
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
</table>

### Reviews
<table border="1" style="border-collapse: collapse; text-align: center; width: 100%;">
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
</table>



## ⁉️Quiz

> 현재 리뷰를 작성한 사용자들의 이메일 형식이 지정되어 있지 않아 데이터가 너무 더럽잖아! 데이터를 확인해보고 제약조건을 설정 해줘야겠다! 정확하지 않은 데이터는 지워야 겠어.

> 광고 리뷰가 너무 많아! \["도박," "돈," "사과티비," "홀덤," "line"\]가 담겨있는 스팸 리뷰를 삭제해야 겠어.

> 나이대 별 부정적인 리뷰들의 비율을 구해봐야겟어. (부정적 리뷰: 0~2점)

> 한국 사람이 작성한 리뷰만 뽑아서 확인해봐야겠어.

> 앱 버전별로 긍정적인 리뷰들의 비율을 구해봐야겠어. (긍정적 리뷰: 3~5점)

> 앱 버전 별, 추천수가 많은 순으로 리뷰를 찾아봐야겠어. 10개만 확인해봐야겠다.

> 이 리뷰 작성한 사람의 다른 리뷰도 궁금한데? 찾아보자.

## 👥Contributors

| ![김예진](https://avatars.githubusercontent.com/u/150774446?v=4) | ![김대연](https://avatars.githubusercontent.com/u/107902336?v=4) | ![나홍찬](https://avatars.githubusercontent.com/u/95984922?v=4) | ![오현두](https://avatars.githubusercontent.com/u/114637614?v=4) |
|:---------------------------------------------------------------:|:---------------------------------------------------------------:|:---------------------------------------------------------------:|:---------------------------------------------------------------:|
| [김예진](https://github.com/yeejkim)                         | [김대연](https://github.com/dyoun12)                      | [나홍찬](https://github.com/HongChan1412)                         | [오현두](https://github.com/HyunDooBoo)                         |

