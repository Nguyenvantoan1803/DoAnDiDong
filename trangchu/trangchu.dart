import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/src/dangnhap/basicTile.dart';

class Trangchu extends StatefulWidget {
  const Trangchu({Key? key}) : super(key: key);
  @override
  _TrangchuState createState() => _TrangchuState();
}

class _TrangchuState extends State<Trangchu> {
  String urlImages = '';
  final ha = ['images/ckc2.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chủ'),
        centerTitle: true,
      ),
    body: Column(children: [
         
          Container(
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
            ]))],)
      
      
       Center(
          child: CarouselSlider.builder(
              options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2)),
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages;
                return buildImage(urlImage, index);
              })),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admin@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            // ListTile(
            //   leading: Icon(Icons.home),
            //   title: Text("Home"),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(Icons.settings),
            //   title: Text("Settings"),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   leading: Icon(Icons.contacts),
            //   title: Text("Contact Us"),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            ListView(
              children: basictitles.map(buildTitle).toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTitle(BasicTile title) {
    return ExpansionTile(
      title: Text(title.title),
      children: title.titles.map((title) => buildTitle(title)).toList(),
    );
  }

  Widget buildImage(String urlImage, int Index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      color: Colors.green,
      child: ListView(
        children: [
          Image.asset('images/ckc2.jpg'),
        ],
      ));
}
