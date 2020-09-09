import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column row',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Row( //Row는 가로로 정렬됨, Column은 세로로 정렬
            //밑에서부터는 세로 정렬
            // mainAxisAlignment: MainAxisAlignment.center, //중앙정렬(센터권한X)
            // mainAxisSize: MainAxisSize.min, //중앙정렬(센터권한O)
            // verticalDirection: VerticalDirection.up, //밑에서부터 정렬(반대:down)
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,//동일간격벌림
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,//끝에붙여 등간격

            //밑에서부터는 가로정렬
            // crossAxisAlignment: CrossAxisAlignment.end,

            //가로방향으로 꽉 붙이기
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                // width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                // height: 30.0, //세로간격(Column일때 사용)
                width: 30.0, //가로간격(Row일때 사용)
              ),
              Container(
                // width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                // width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),

              //오른쪽 끝점으로 정렬//
              // Container(
              //   width: double.infinity,
              //   height: 20,
              /////////////////////////

              // ),
            ],
          ),
        ),

      ),
    );
  }
}
//레이아웃 공부 사이트 :
// https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e