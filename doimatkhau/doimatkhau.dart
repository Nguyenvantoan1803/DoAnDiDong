import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';

class Doimatkhau extends StatefulWidget {
  const Doimatkhau({Key? key}) : super(key: key);
  @override
  _DoimatkhauState createState() => _DoimatkhauState();
}

class _DoimatkhauState extends State<Doimatkhau> {
  TextEditingController _passcu = new TextEditingController();
  TextEditingController _passmoi = new TextEditingController();
  TextEditingController _xacnhanpass = new TextEditingController();
  var MatkhauInvalid = false;
  var MatkhaumoiInvalid = false;
  var XacnhanpassInalid = false;

  var matkhaumacdinh = "admin123";
  var matkhauErro = "Vui lòng nhập lại mật khẩu cũ";
  var matkhaumoiErro = "Vui lòng nhập lại mật khẩu mới";
  var xacnhanpasserro = "không trùng mật khẩu";

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
                obscureText: true,
                controller: _passcu,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mật khẩu cũ',
                    errorText: MatkhauInvalid ? matkhauErro : null),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: TextField(
                obscureText: true,
                controller: _passmoi,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mật khẩu mới',
                    errorText: MatkhaumoiInvalid ? matkhaumoiErro : null),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: TextField(
                obscureText: true,
                controller: _xacnhanpass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Xác nhận mật khẩu',
                    errorText: XacnhanpassInalid ? xacnhanpasserro : null),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: OutlinedButton(
                  onPressed: UpdateClick,
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
                        'Thay đổi',
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
                      MaterialPageRoute(builder: (context) => Trangchu()),
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
                        'Trở lại',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 36, 113, 177)),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }

  void UpdateClick() {
    setState(() {
      if (_passcu.text.length < 6 ||
          _passcu.text.length > 9 ||
          _passcu.text != matkhaumacdinh) {
        MatkhauInvalid = true;
      } else {
        MatkhauInvalid = false;
      }
      if (_passmoi.text.length < 6 || _passmoi.text.length > 9) {
        MatkhaumoiInvalid = true;
      } else {
        MatkhaumoiInvalid = false;
      }
      if (_xacnhanpass.text != _passmoi.text) {
        XacnhanpassInalid = true;
      } else {
        XacnhanpassInalid = false;
      }
      if (MatkhauInvalid == false &&
          XacnhanpassInalid == false &&
          MatkhaumoiInvalid == false) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Trangchu()),
        );
      } else {
        setState(() {});
      }
    });
  }
}
