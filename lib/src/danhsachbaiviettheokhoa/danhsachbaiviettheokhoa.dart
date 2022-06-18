import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/dieuhuongkhoa.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';

class DanhSachBaiViettheokhoa extends StatefulWidget {
  const DanhSachBaiViettheokhoa({Key? key}) : super(key: key);
  @override
  _DanhSachBaiViettheokhoaState createState() =>
      _DanhSachBaiViettheokhoaState();
}

class _DanhSachBaiViettheokhoaState extends State<DanhSachBaiViettheokhoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách bài viết'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: ListView(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
              children: <Widget>[
            ListTile(
              title: Text(''),
              subtitle: Text(""),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                  ''),
              subtitle: Text('Nhà trường sẽ tiến hành xét phân chuyên ...'),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                  'Thông báo v/v mở lớp Học kỳ phụ Học kỳ cuối cho khóa 2019'),
              subtitle: Text('SV thực hiện đúng thứ tự 3 bước sau đây: ...'),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                  'Lịch đào tạo năm học 2021-2022 (cập nhật ngày 05/5/2022)'),
              subtitle: Text('Tiêu đề ...'),
              onTap: () {},
            ),
          ])),
    );
  }
}
