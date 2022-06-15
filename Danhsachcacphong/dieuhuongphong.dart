import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/danhsachbaiviettheophong.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';

class DieuhuongPhong extends StatefulWidget {
  const DieuhuongPhong({Key? key}) : super(key: key);
  @override
  _DieuhuongPhongState createState() => _DieuhuongPhongState();
}

class _DieuhuongPhongState extends State<DieuhuongPhong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phòng'),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Doimatkhau()),
                );
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
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          children: <Widget>[
            ListTile(
              title: Text('Phòng đào tạo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DanhSachBaiViet()),
                );
              },
            ),
            ListTile(
              title: Text('Phòng kế toán'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Phòng hành chính- quản trị'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Phòng CTCT- HSSV'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Phòng KHCN& HTQT'),
              onTap: () {},
            ),
            Padding(
                padding: EdgeInsets.only(top: 350),
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
        ),
      ),
    );
  }
}
