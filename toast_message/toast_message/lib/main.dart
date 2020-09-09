import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//사용하려면 pubspec.yaml 파일의 dependencies: 하단에
// fluttertoast: ^7.0.4 를 추가한다. 위치에 주의할 것
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toast messange',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast messange'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            flutterToast(); //버튼을 눌렀을때 flutterToast 함수를 실행한다.
          },
          child: Text('Toast'),
          color: Colors.blue,
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Flutter', //출력되는 값
      gravity: ToastGravity.BOTTOM, //Toast message가 표시될 위치 지정
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      // toastLength: Toast.LENGTH_SHORT);
      toastLength: Toast.LENGTH_SHORT); //Toast message가 보여질 시간 지정
}
