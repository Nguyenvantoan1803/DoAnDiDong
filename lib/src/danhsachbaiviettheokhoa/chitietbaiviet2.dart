import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/trangchu/dieuhuongkhoa.dart';



class DanhSachBaiViettheokhoa2 extends StatefulWidget {
  const DanhSachBaiViettheokhoa2({Key? key}) : super(key: key);
  @override
  _DanhSachBaiViettheokhoaState2 createState() =>
      _DanhSachBaiViettheokhoaState2();
}

class _DanhSachBaiViettheokhoaState2 extends State<DanhSachBaiViettheokhoa2> {
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
              contentPadding: EdgeInsets.fromLTRB(10, 19, 10, 10),
              title: Text('Thông báo',style: TextStyle(fontSize: 20),),
               subtitle: Column(children: [ Padding( padding:EdgeInsets.fromLTRB(20, 50, 20, 0) ) ,Text('Kết quả xét công nhận tốt nghiệp tháng 5 năm 2022'),
               Text('Sinh viên tra cứu kết quả tại đây.'),
               Text('Sinh viên tốt nghiệp đợt tháng 5/2022 đăng ký nhận Giấy Chứng nhận tốt nghiệp tạm thời tại Phòng Đào tạo từ 25/5/2022.'),
               Text('Lịch phát bằng tốt nghiệp sẽ được thông báo vào đầu tháng 6/2022')],) ,

            ),

          ])),
    );
  }
}
