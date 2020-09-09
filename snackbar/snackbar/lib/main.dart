import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snack bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

// Snack Bar는 하단에 나오는 메세지 창
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Builder(
          //Builder를 사용하여 snack bar를 구현함.
          builder: (BuildContext ctx) {
            //snack bar는 상단의 BuildContext를 참조함.
            return Center(
              //Center 함수를 리턴함
              child: FlatButton(
                // 납작한 버튼 삽입
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(SnackBar(
                    //Scaffold.of(안에 상단에서 지정한 buildContext의 인스턴스 지정)
                    content: Text('Hello'), //눌렀을때 나오는 항목 지정
                  ));
                },
                child: Text(
                  //플랫버튼안에 내용 작성
                  'Show me',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            );
          },
        ));
  }
}
