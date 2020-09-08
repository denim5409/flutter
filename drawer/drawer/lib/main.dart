import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //우측상단의 debug 배너 삭제
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red), //기본테마 색상
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          //AppBar 우측에 나타내는 아이콘들을 입력할때 사용
          IconButton(
            icon: Icon(Icons.shopping_cart), //쇼핑카트 아이콘
            onPressed: () {
              //버튼을 눌렀을때 동작, IconButton을 입력하면 자동으로 onPressed 생성
              print('shopping cart button is clicked'); //콘솔창에 텍스트가 출력됨
            },
          ),
          IconButton(
            icon: Icon(Icons.search), //검색 아이콘
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        //햄버거 모양의 버튼, 옆에서 창이 나와서 선택메뉴가 나옴,
        //원래 leading: IconButton형태로 Icons.menu가 있어야 하나, drawer가 대체함
        child: ListView(
          //drawer의 ListView 형태
          padding: EdgeInsets.zero, //ListView에서 여백이 필요없음
          children: <Widget>[
            UserAccountsDrawerHeader(
              //유저계정 정보를 나타내는 창
              currentAccountPicture: CircleAvatar(
                //유저계정 사진을 넣음
                backgroundImage: AssetImage('assets/rion.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                //부계정, 또는 다른 계정에 대한 사진을 넣음
                CircleAvatar(
                  backgroundImage: AssetImage('assets/tube.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar( //여러개 있으면 여러개의 사진이 나옴
                //   backgroundImage: AssetImage('assets/tube.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text('Rion'), //계정명, 반드시 작성해야 함
              accountEmail: Text('denim3@hanmail.net'), //계정메일주소, 반드시 작성해야 함
              onDetailsPressed: () {
                //끝에 나타내는 화살표(누르면 펼침 기능 구현가능)
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  //유저계정정보가 나타나는 창을 나타냄(BoxDecoration)
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      //테두리 원형 크기 지정
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              //Drawer는 ListTile 형태로 나타냄
              leading: Icon(
                //아이콘 삽입
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                // 눌렀을때
                print('Home is clicked');
              },
              trailing: Icon(Icons.add), //우측끝에 나타내는 + 표시
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
