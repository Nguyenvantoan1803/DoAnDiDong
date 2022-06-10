import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangky/dangky.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';

class DangNhap extends StatefulWidget {
  const DangNhap({Key? key}) : super(key: key);
  @override
  _DangnhapState createState() => _DangnhapState();
}

class _DangnhapState extends State<DangNhap> {
  TextEditingController _usersController = new TextEditingController();
  TextEditingController _passwordcontroller = new TextEditingController();
  var _userInvalid = false;
  var _passInvalid = false;
  var _passErro = "Mật khẩu không hợp lệ";
  var _userErro = "Tài khoản không hợp lệ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Đăng nhập',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ]),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 70),
              child: Icon(
                Icons.person_pin,
                size: 150,
                color: Colors.grey[400],
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            child: TextField(
              controller: _usersController,
              decoration: InputDecoration(
                  labelText: 'Tài khoản',
                  errorText: _userInvalid ? _userErro : null),
            ),
          ),
          Stack(alignment: AlignmentDirectional.centerEnd, children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: TextField(
                obscureText: true,
                controller: _passwordcontroller,
                decoration: InputDecoration(
                    labelText: 'Mật khẩu',
                    errorText: _passInvalid ? _passErro : null),
              ),
            ),
          ]),
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: OutlinedButton(
                onPressed: onSignInClick,
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
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 36, 113, 177)),
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
                    MaterialPageRoute(builder: (context) => Dangky()),
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
                      'Đăng kí',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  void onSignInClick() {
    setState(() {});
    if (!_usersController.toString().contains("@")) {
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
    if (!_userInvalid && _passInvalid == false) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Trangchu()),
      );
    } else {
      setState(() {});
    }
  }
}
