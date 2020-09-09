import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea( // 실제 사용할 수 있는 영역만 사용하도록 지정
        child: Container( //박스 안에 글자를 적을 수 있는 위젯?
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric( //마진 설정
            vertical: 50, //상단
            horizontal: 10 // 좌측
          ),
          padding: EdgeInsets.all(10), //박스 내부끝에서부터 글자까지의 간격
          child: Text('Hello'),
        ),
      ),
    );
  }
}

