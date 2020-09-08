import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BBANTO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800], //전체 백그라운드는 오렌지색
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: Colors.amber[700], //AppBar의 백그라운드 색상은 전체 백그라운드보다 약간 옅게
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0,
            0.0), //처음 시작 간격을 left:30, top:40, right:0, bottom:0 지정
        child: Column(
          //컬럼(세로)방향으로 위젯 배치함
          crossAxisAlignment: CrossAxisAlignment.start, //세로 위에서부터 배치
          children: <Widget>[
            //여러개의 위젯 배치할때 사용
            Center(
              //중간 정렬함
              child: CircleAvatar(
                //원형 형태로 뭔가 넣을때
                backgroundImage:
                    AssetImage('assets/bear.gif'), //백그라운드 이미지를 넣을때 사용
                radius: 60.0, //원 둘레 사이즈
              ),
            ),
            Divider(
              //직선 구분선 삽입
              height: 60.0, //위에 위젯과 직선과의 간격
              color: Colors.grey[850], //직선의 색상
              thickness: 0.5, //직선의 두께
              endIndent: 30.0, //직선의 양쪽끝에서 얼마나 떨어지게 할 지
            ),
            Text(
              'NAME', //텍스트의 스타일을 지정할때 '텍스트' 뒤에 , 찍고 그 밑에 작성
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, //글자와 글자 사이의 간격
              ),
            ),
            SizedBox(
              //특정 사이즈의 박스를 넣을때
              height: 10.0, //위의 위젯과 밑의 위젯간의 간격
            ),
            Text(
              'BBANTO',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'BBANTO POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              //위젯을 가로방향으로 순차 배치할때 사용
              children: <Widget>[
                Icon(Icons
                    .check_circle_outline), //아이콘을 넣는다. check_circle_outline: 원안에 체크표시가 있는 아이콘
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'face hero tattoo',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'fire flames',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/rion.png'),
                radius: 40.0,
                // backgroundColor: Colors.amber[800],
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
