import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/dieuhuongphong.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';

class DanhSachBaiViettheophong extends StatefulWidget {
  const DanhSachBaiViettheophong({Key? key}) : super(key: key);
  @override
  _DanhSachBaiViettheophongState createState() =>
      _DanhSachBaiViettheophongState();
}

class _DanhSachBaiViettheophongState extends State<DanhSachBaiViettheophong> {
  bool _like = false;
  int _demlike = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Danh sách bài viết'),
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
        body: ListView(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 50, left: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    'https://img.lovepik.com/photo/40019/7649.jpg_wh860.jpg',
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "Chuyện sài gòn",
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://img.lovepik.com/photo/40019/7649.jpg_wh860.jpg',
                            height: 300,
                            width: 300,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.thumb_up,
                  size: 20,
                ),
                Text(_demlike.toString()),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      _like = !_like;
                      _demlike += (_like ? 1 : -1);
                      setState(() {});
                    },
                    child: _like
                        ? const Text(
                            "Thích",
                            style: TextStyle(color: Colors.blue),
                          )
                        : const Text(" Thích",
                            style: TextStyle(color: Colors.black)))
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 50, left: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    'https://img.lovepik.com/photo/40019/7649.jpg_wh860.jpg',
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "Chuyện sài gòn",
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://img.lovepik.com/photo/40019/7649.jpg_wh860.jpg',
                            height: 300,
                            width: 300,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.thumb_up,
                  size: 20,
                ),
                Text(_demlike.toString()),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      _like = !_like;
                      _demlike += (_like ? 1 : -1);
                      setState(() {});
                    },
                    child: _like
                        ? const Text(
                            "Thích",
                            style: TextStyle(color: Colors.blue),
                          )
                        : const Text(" Thích",
                            style: TextStyle(color: Colors.black)))
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 50, left: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    'https://img.lovepik.com/photo/40019/7649.jpg_wh860.jpg',
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "Chuyện sài gòn",
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Container(
              child: Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://img.lovepik.com/photo/40019/7649.jpg_wh860.jpg',
                            height: 300,
                            width: 300,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.thumb_up,
                  size: 20,
                ),
                Text(_demlike.toString()),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: Row(
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      _like = !_like;
                      _demlike += (_like ? 1 : -1);
                      setState(() {});
                    },
                    child: _like
                        ? const Text(
                            "Thích",
                            style: TextStyle(color: Colors.blue),
                          )
                        : const Text(" Thích",
                            style: TextStyle(color: Colors.black)))
              ],
            ),
          )
        ]));
  }
}
