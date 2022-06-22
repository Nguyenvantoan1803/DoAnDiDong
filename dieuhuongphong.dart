import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/caidat.dart';
import 'package:flutter_application_1/src/trangchu/thongbao.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';

class DieuhuongPhong extends StatefulWidget {
  const DieuhuongPhong({Key? key}) : super(key: key);
  @override
  _DieuhuongPhongState createState() => _DieuhuongPhongState();
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

class _DieuhuongPhongState extends State<DieuhuongPhong> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _iconbool ? _darttheme : _lighttheme,
        home: Scaffold(
          body: IndexedStack(
            children: [Trangchu(), Doimatkhau(), Caidat()],
            index: _selectIndex,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Trang chủ",
                backgroundColor: Colors.blueAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Trang cá nhân",
                backgroundColor: Colors.blueAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Cài Đặt",
                backgroundColor: Colors.blueAccent,
              ),
            ],
            selectedItemColor: Colors.amber,
            currentIndex: _selectIndex,
            onTap: (index) {
              setState(() {
                _selectIndex = index;
              });
            },
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Admin"),
                  accountEmail: Text("admin@caothang.edu.vn"),
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
                  title: Text("Trang chính"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DieuhuongPhong()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("Khoa CNTT"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("Đào tạo"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("CTCT-HSSV"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("Đoàn thanh niên"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("Học bổng- Vay vốn"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text("Học phí"),
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
        ));
  }
}
