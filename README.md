# Analyze-ChatGPT-Reviews-with-SQL

## ☘ Overview

- 본 프로젝트는 ChatGPT Review 데이터셋을 활용하여 SQL 입문자들에게 SQL 문법을 쉽게 정리할 수 있도록 돕는 문제를 출제하는 프로젝트입니다.

  - 목표
      - ChatGPT Review 데이터를 활용하여 SQL 정규 표현식을 학습하고, SQL 정규 표현식과 기본 문법에 대한 이해를 심화하는 것을 목표로 합니다.
      - 리뷰 데이터의 구조를 분석하고, 실무에서 자주 접할 수 있는 문제 상황을 바탕으로 DB 및 학습용 데이터 세팅을 직접 수행할 수 있습니다.
      - 문제를 내고 답안을 작성하는 과정을 통해 SQL에 조금 더 친숙해질 수 있는 기회를 마련하고자 하였습니다.

**[Quiz 풀러가기](https://github.com/miss-match/Analyze-ChatGPT-Reviews-with-SQL/blob/main/Quiz/README.md)**

## 👥 Contributors

| ![김예진](https://avatars.githubusercontent.com/u/150774446?v=4) | ![김대연](https://avatars.githubusercontent.com/u/107902336?v=4) | ![나홍찬](https://avatars.githubusercontent.com/u/95984922?v=4) | ![오현두](https://avatars.githubusercontent.com/u/114637614?v=4) |
|:---------------------------------------------------------------:|:---------------------------------------------------------------:|:---------------------------------------------------------------:|:---------------------------------------------------------------:|
| [김예진](https://github.com/yeejkim)                         | [김대연](https://github.com/dyoun12)                      | [나홍찬](https://github.com/HongChan1412)                         | [오현두](https://github.com/HyunDooBoo)                         |


## Architecture
![제목 없는 다이어그램 drawio](https://github.com/user-attachments/assets/f8ac27fe-6b45-4c6e-ba55-7d184c5ad059)

> 내부망 사용자들이 Quiz Server MySQL에 접근할 수 있도록 환경 구성

## How to configure Architecture
![image](https://github.com/user-attachments/assets/a502763e-fec1-4a6e-a017-585a54df91c7)

> [QuizServer] 고급 보안이 포함된 Windows Defender 방화벽 > 인바운드 규칙: 3306 추가

![image](https://github.com/user-attachments/assets/2af12082-552d-408d-a93c-3e0e99e0f17d)

> [QuizServer] VirtualBox > 설정 > 네트워크 > 포트포워딩 > 호스트 IP: 0.0.0.0 수정


## 회고

**김예진**
**김대연**
- 실습을 위한 환경을 구성하고 문제를 내는 과정에서 문제 SQL 기본 문법과 정규표현식을 학습할 수 있었습니다. 스토리를 부여하여 사용자가 상황에 몰입할 수 있도록 하자는 의견을 적극 반영하여 문제를 구성한 부분이 좋았습니다.
- 반면에 실습환경을 제공하고자 db 리소스를 외부에 공개하는 과정에서 포트포워딩과 os 별 인,아웃바운드 규칙에 대해서도 학습해볼 수 있는 좋은 기회였다고 생각합니다.
**나홍찬**
- 이번 프로젝트를 통해 SQL을 활용하여 테이블을 생성하고, 입출력 테스트를 진행하면서 테이블 설계 능력을 향상시킬 수 있었습니다. 사용자들이 퀴즈를 풀 수 있도록 난이도를 고려하여 새로운 경험을 설계하는 과정이 매우 흥미로웠습니다.
- 또한, 내부망 사용자들이 퀴즈 서버에 접근하기 위해 서버의 포트를 여는 방법과 인바운드 규칙에 대해 더 깊이 이해하게 되었습니다. 이러한 경험은 향후 다른 프로젝트에서 클라우드를 사용하지 않고도 내부망에서 접근할 수 있는 시스템을 구축하는 데 큰 도움이 될 것이라 생각합니다.
**오현두**
  
