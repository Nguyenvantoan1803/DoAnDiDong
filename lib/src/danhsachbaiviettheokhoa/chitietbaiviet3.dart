import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/trangchu/dieuhuongkhoa.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';

class DanhSachBaiViettheokhoa3 extends StatefulWidget {
  const DanhSachBaiViettheokhoa3({Key? key}) : super(key: key);
  @override
  _DanhSachBaiViettheokhoaState3 createState() =>
      _DanhSachBaiViettheokhoaState3();
}

class _DanhSachBaiViettheokhoaState3 extends State<DanhSachBaiViettheokhoa3> {
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
              title: Text('Nhà trường sẽ tiến hành xét phân chuyên ngành căn cứ theo “Quy định phân chuyên ngành đối với các ngành, nghề đào tạo trình độ cao đẳng có nhiều chuyên ngành” (được đăng tải trên website phòng Đào tạo tại địa chỉ: http://goo.gl/HupZIr) đối với Sinh viên khóa 2020 như sau:'),
               subtitle: Column(children: [Text('1. Ngành Công nghệ kỹ thuật Điện, điện tử',style: TextStyle(fontSize: 20) ,),
               Text('Chuyên ngành CNKT Điện công nghiệp'),
               Text('Chuyên ngành CNKT Điện tử công nghiệp'),
               Text('2. Ngành Công nghệ kỹ thuật Điện tử, truyền thông',style: TextStyle(fontSize: 20) ,),
               Text('Chuyên ngành CNKT Điện tử viễn thông'),
               Text('Chuyên ngành CNKT Viễn thông và mạng máy tính'),
             
               ],),

            ),
            
          ])),
    );
  }
}
