import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/dieuhuongphong.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';
import 'package:flutter_application_1/src/danhsachbaiviettheophongdaotao/baivietso1.dart';

class DanhSachBaiViettheophong extends StatefulWidget {
  const DanhSachBaiViettheophong({Key? key}) : super(key: key);
  @override
  _DanhSachBaiViettheophongState createState() =>
      _DanhSachBaiViettheophongState();
}

class _DanhSachBaiViettheophongState extends State<DanhSachBaiViettheophong> {
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
      body: Container(
          child: ListView(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
              children: <Widget>[
            ListTile(
              title: Text('Lịch thi học kỳ 2 năm học 2021-2022'),
              subtitle: Text("Sinh viên tra cứu kết..."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BaiViet1()),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                  'Thông báo về việc đăng ký chuyên ngành đối với sinh viên khóa 2020 các ngành, nghề Công nghệ kỹ thuật Điện, điện tử; Công nghệ kỹ thuật Điện tử, truyền thông và Công nghệ thông tin '),
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
