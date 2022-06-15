import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';

class Dangky extends StatefulWidget {
  const Dangky({Key? key}) : super(key: key);
  @override
  _DangkyState createState() => _DangkyState();
}

class _DangkyState extends State<Dangky> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _passwordcontroller = new TextEditingController();
  TextEditingController _xacnhanpasscontroller = new TextEditingController();

  var _userInvalid = false;
  var _emailInvalid = false;
  var _passInvalid = false;
  var _xacnhanInvalid = false;
  var _passErro = "Mật khẩu không hợp lệ";
  var _emailErro = "Tên tài khoản không hợp lệ";
  var _userErro = "Tài khoản không hợp lệ";
  var _xacnhanmatkhauErro = "không trùng với mật khẩu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Đăng ký',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ]),
          Center(
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://img.lovepik.com/photo/40019/7649.jpg_wh860.jpg',
                  height: 200,
                  width: 300,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tên Tài khoản',
                  errorText: _userInvalid ? _userErro : null),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  errorText: _emailInvalid ? _emailErro : null),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: _passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mật khẩu',
                errorText: _passInvalid ? _passErro : null,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: _xacnhanpasscontroller,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Xác nhận Mật khẩu',
                errorText: _xacnhanInvalid ? _xacnhanmatkhauErro : null,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: OutlinedButton(
                onPressed: DangKyclick,
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  maximumSize: Size(300, 480),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Tạo tài khoản',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    )
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DangNhap()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  maximumSize: Size(300, 480),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Đăng nhập',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  void DangKyclick() {
    setState(() {});
    if (!_emailcontroller.toString().contains("@")) {
      _emailInvalid = true;
    } else {
      _emailInvalid = false;
    }
    if (_nameController.text.length < 6 || _nameController.text.length > 15) {
      _userInvalid = true;
    } else {
      _userInvalid = false;
    }
    if (_passwordcontroller.text.length < 6 ||
        _passwordcontroller.text.length > 9) {
      _passInvalid = true;
    } else {
      _passInvalid = false;
    }
    if (_xacnhanpasscontroller.text == _passwordcontroller.text) {
      _xacnhanInvalid = false;
    } else {
      _xacnhanInvalid = true;
    }
    if (!_userInvalid &&
        _emailInvalid == false &&
        _passInvalid == false &&
        _xacnhanInvalid == false) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Trangchu()),
      );
    } else {
      setState(() {});
    }
  }
}
