# swift-pokergameapp

## step6 : 승자 확인하기 (2020년 3월 3일)

> 조합

* 원페어 = 가진 카드 중 두 카드 숫자가 같은 경우
* 투페어 = 가진 카드 중 두 카드 숫자가 같은 경우가 두 가지 이상
* 트리플 = 가진 카드 중 세 카드 숫자가 같은 경우
* 스트레이트 = 가진 카드 중 다섯 카드 숫자가 연속 번호인 경우
* 포카드 = 가진 카드 중 네 카드 숫자가 같은 경우

## 구현 순서

1. 원페어, 투페어, 트리플, 스트레이트, 포카드 조합을 정의하고 우선순위 및 점수도 정한다. (원페어 < 투페어 < 트리플 < 스트레이트 < 포카드)

2. 카드들에 대해 포카드, 스트레이트, 트리플, 투페어, 원페어 순으로 해당 조합인지 검사한다. 또 남는 카드에 있어서 조건이 맞는다면 반복 검사한다. 
<br>(예: 만약 5 stut인데 트리플이 나왔다면 남은 2개의 있어서 원페어가 될 수 있는지 검사한다.)

3. 승자 결정하기 
    1. 가장 큰 조합이 있는 경우 승자가 된다. (예: [포카드] > [스트레이트] )
    2. 만약 조합이 모두 같다면, 제일 큰 조합부터 숫자로 비교해서 승자를 가린다.
        <br>( 예: A: \[트리플(3), 투페어(k)] B: \[트리플(3), 투페어(5)] 와 같은 상황이라면 A의 투페어의 숫자(=k)가 더 크므로 A가 승자이다.)
    3. 만약 조합들끼리도 모두 숫자가 같은 경우, 조합이 아닌 카드의 숫자 중 가장 큰 숫자를 비교한다. ( 구현 코드에서는 **oneCard**인 경우입니다. )
    4. 조합이 아닌 카드의 숫자중 가장 큰 숫자까지도 같은 경우는 같은 순위인 것으로 판단한다.
    5. 페어가 없는 경우 나머지 카드중 가장 높은 숫자끼리 비교해 더 큰 숫자를 가진 플레이어를 승자로 결정한다. ( 구현 코드에서는 **oneCard**인 경우입니다. )

## 출력화면

<img width="538" alt="스크린샷 2020-03-03 오후 11 35 23" src="https://user-images.githubusercontent.com/38216027/75785865-bffa6080-5da7-11ea-9062-8e7f6fe32707.png">
