import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';

class Doimatkhau extends StatefulWidget {
  const Doimatkhau({Key? key}) : super(key: key);
  @override
  _DoimatkhauState createState() => _DoimatkhauState();
}

class _DoimatkhauState extends State<Doimatkhau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thay đổi mật khẩu'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Admin"),
                accountEmail: Text("admin@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Phòng"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Khoa"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Thông tin cá nhân"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Đổi mật khẩu"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.replay),
                title: Text("Đăng xuất"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DangNhap()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: TextField(
                controller: _usersController,
                decoration: InputDecoration(
                    labelText: 'Tài khoản',
                    errorText: _userInvalid ? _userErro : null),
              ),
            ),
          ],
        ));
  }
}
