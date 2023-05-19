import 'package:flutter/material.dart';
import 'package:flutter_webtton/screens/home_screen.dart';
import 'package:flutter_webtton/services/api_service.dart';

void main() {
  // 테스트 - 데이터 가져오기
  ApiService().getTodaysToons();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
