import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/trangchu/dieuhuongkhoa.dart';

import 'package:flutter_application_1/src/trangchu/trangchu.dart';

class DanhSachBaiViettheokhoa1 extends StatefulWidget {
  const DanhSachBaiViettheokhoa1({Key? key}) : super(key: key);
  @override
  _DanhSachBaiViettheokhoaState1 createState() =>
      _DanhSachBaiViettheokhoaState1();
}

class _DanhSachBaiViettheokhoaState1 extends State<DanhSachBaiViettheokhoa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách bài viết Cơ Khí'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: ListView(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
              children: <Widget>[
            ListTile(  
              title: Text('Link đính kèm'),
               subtitle: Text('Tuần 34-38 (CĐ NL 20, CĐ ÔTÔ 20, CĐN ÔTÔ 20)'),

            ),
             ListTile(  
              title: Text('Link đính kèm'),
               subtitle: Text('Tuần 42-44 (CĐ NL 21, CĐ ĐKTĐ 21, CĐN CGKL 20, CĐN ĐTCN 20)	'),

            ),
           
          
            
          ])),
    );
  }
}
