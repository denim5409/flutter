import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor card',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'), //AppBar의 타이틀을 텍스트 형태로 나타냄
        centerTitle: true, //AppBar 타이틀 텍스트를 중앙에 위치함
        backgroundColor: Colors.redAccent, //AppBar 배경색상 지정
        elevation: 0.0, //AppBar와 body의 경계선 음영 두께(0이면 없음)
      ),
      body: Center(
        //전체 body의 위젯을 중앙에 배치함
        child: Column(
          //child라는 위젯을 가지는 센터위젯 내에 컬럼 위젯을 사용(위젯을 세로 형태로 배치함)
//          mainAxisAlignment: MainAxisAlignment.center,   //컬럼 위젯은 세로 방향으로 전체를 차지함으로 해당 코드가 있으면 세로방향으로 중간에 오게 함
          children: <Widget>[
            //children위젯은 <Widget>[] 형태로 복수의 위젯을 가지므로 [ ] 안에 작성하게 됨
            Text('Hello'), //children 위젯 내에 Text 위젯을 3개 사용, 각 위젯은 , 로 구분하게 됨
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
