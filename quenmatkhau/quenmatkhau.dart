import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/dieuhuongphong.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';

class Quenmatkhau extends StatefulWidget {
  const Quenmatkhau({Key? key}) : super(key: key);
  @override
  _QuenmatkhauState createState() => _QuenmatkhauState();
}

class _QuenmatkhauState extends State<Quenmatkhau> {
  TextEditingController _usersController = new TextEditingController();
  TextEditingController _passwordcontroller = new TextEditingController();
  bool _showpass = false;
  var _userInvalid = false;
  var _passInvalid = false;
  var _passErro = "Mật khẩu không hợp lệ";
  var _userErro = "Tài khoản không hợp lệ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Quên mật khẩu',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ]),
      Center(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://img.lovepik.com/photo/40019/7649.jpg_wh860.jpg',
              height: 300,
              width: 300,
            )
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
        child: TextField(
          controller: _usersController,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Tài khoản',
              errorText: _userInvalid ? _userErro : null),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 18, color: Colors.black),
              controller: _passwordcontroller,
              obscureText: !_showpass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Mật khẩu",
                errorText: _passInvalid ? _passErro : null,
                labelStyle: TextStyle(
                  color: Color(0xff888888),
                  fontSize: 17,
                ),
              ),
            ),
            GestureDetector(
              onTap: showpass,
              child: Text(
                !_showpass ? "Hiện" : "Ẩn",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ]));
  }

  void showpass() {
    setState(() {
      _showpass = !_showpass;
    });
  }
}
