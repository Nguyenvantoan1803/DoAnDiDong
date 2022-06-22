import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';

class DanhSachBaiViettheophong extends StatefulWidget {
  const DanhSachBaiViettheophong({Key? key}) : super(key: key);
  @override
  _DanhSachBaiViettheophongState createState() =>
      _DanhSachBaiViettheophongState();
}

class _DanhSachBaiViettheophongState extends State<DanhSachBaiViettheophong> {
  TextEditingController _cmt1 = new TextEditingController();
  bool _like = false;
  int _demlike = 250;
  bool _like1 = false;
  int _demlike1 = 100;
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
                title: Text("Trang chính"),
                onTap: () {
                  Navigator.pop(context);
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
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      )),
                    ),
                    child: Text("TEXT"),
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      )),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text("TEXT",
                              style: TextStyle(color: Colors.grey)),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Text("TEXT",
                              style: TextStyle(color: Colors.blue)),
                        )
                      ],
                    ),
                    // child: Text(_lstfindpost[index]['content'].toString()),
                  ),
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("TEXT"),
                  ),
                  onTap: () {
                    // print(_lstfindpost[index]["id"]);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPostPage(postId: _lstfindpost[index]["id"].toString())));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Trangchu()));
                  },
                ),
              );
            }));
  }
}
