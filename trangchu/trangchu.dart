import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/dieuhuongphong.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';

class Trangchu extends StatefulWidget {
  const Trangchu({Key? key}) : super(key: key);
  @override
  _TrangchuState createState() => _TrangchuState();
}

bool _iconbool = false;
IconData _iconlight = Icons.wb_sunny;
IconData _icondart = Icons.nights_stay;
ThemeData _lighttheme =
    ThemeData(primarySwatch: Colors.amber, brightness: Brightness.light);
ThemeData _darttheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _TrangchuState extends State<Trangchu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _iconbool ? _darttheme : _lighttheme,
        home: Scaffold(
          appBar: AppBar(
              title: Text('Trang chủ'),
              centerTitle: true,
              backgroundColor: Colors.blue,
              actions: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _iconbool = !_iconbool;
                    });
                  },
                  icon: Icon(_iconbool ? _icondart : _iconlight),
                ),
              ]),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DieuhuongPhong()),
                    );
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
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: <Widget>[
                Text(
                  "Tin tức nỗi bật",
                  style: TextStyle(
                    fontSize: 20,
                    backgroundColor: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Phòng CTCT-HSSV'),
                  subtitle: Text("chương trình hiến máu nhân đạo"),
                  onTap: () {},
                ),
                Text(
                  "Tin tức xem nhiều nhất",
                  style: TextStyle(
                    fontSize: 20,
                    backgroundColor: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Phòng đào tạo'),
                  subtitle: Text('Thời khóa biểu áp dụng ngày (05/02...'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
