import 'package:flutter/material.dart';
import 'ctychitiet.dart';
import 'ctypage.dart';
import 'package:flutter_bmi_calculator/models/congty.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  CongTy congTy;
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Quản lý thông tin thực tập của sinh viên',
      initialRoute: '/',
      routes: {
        '/SVPage': (context) => SVPage(congTy: this.congTy,),
        '/CongTyPage': (context) => CongTyPage()
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Thông tin các công ty'),
        ),
        body: SafeArea(
          child: CongTyPage(),
        ),
      ),
    );
  }
}