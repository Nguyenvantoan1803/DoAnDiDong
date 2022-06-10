import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/dangky/dangky.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DangNhap(),
    );
  }
}
