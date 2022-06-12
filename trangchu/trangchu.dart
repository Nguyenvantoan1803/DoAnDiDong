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
      body: Center(
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
