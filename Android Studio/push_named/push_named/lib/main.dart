import 'package:flutter/material.dart';
import 'package:push_named/ScreenA.dart';
import 'package:push_named/ScreenB.dart';
import 'package:push_named/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',  // home 대신 initialRoute로 수정함(초기에 불러오는 위치를 나타냄)
      routes: {
        '/' : (context) => ScreenA(),  // 슬래쉬(/)를 부르면 ScreenA가 불러와진다.
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}
