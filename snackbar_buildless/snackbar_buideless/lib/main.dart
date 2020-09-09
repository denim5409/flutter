import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snack bar_buildless',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        backgroundColor: Colors.red,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: MySnackBar(), //별도 클래스를 만들어 참조함
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          //버튼 삽입
          child: Text('Show me'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              //동일하게 BuildContext의 인스턴스는 참조함
              SnackBar(
                content: Text(
                  //그외 방식은 이전과 동일함
                  'Hello',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000), //표시되는 시간
              ),
            );
          }),
    );
  }
}
