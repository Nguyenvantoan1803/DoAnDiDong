import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/danhsachbaiviettheokhoa.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';
import 'package:flutter_application_1/src/trangchu/doimatkhau.dart';

class DieuhuongKhoa extends StatefulWidget {
  const DieuhuongKhoa({Key? key}) : super(key: key);
  @override
  _DieuhuongKhoaState createState() => _DieuhuongKhoaState();
}

class _DieuhuongKhoaState extends State<DieuhuongKhoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Khoa'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              })
        ],
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          children: <Widget>[
            ListTile(
              title: Text('Khoa Cơ Khí'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DanhSachBaiViettheokhoa()),
                );
              },
            ),
            ListTile(
              title: Text('Bộ môn Kinh tế'),
              onTap: () {},
            ),
             ListTile(
              title: Text('Khoa Công nghệ thông tin'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Khoa Điện- Điện tử'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Khoa Giáo dục đại cương'),
              onTap: () {},
            ),

            Padding(
                padding: EdgeInsets.only(top: 350),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Trangchu()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    maximumSize: Size(300, 480),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center     ,
                    children: const [
                      Text(
                        'Trở lại',
                        style: TextStyle( 
                            fontSize: 25,
                            color: Color.fromARGB(255, 36, 113, 177      )),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Khoa Cơ khí',
    'Bộ môn Kinh tế',
    'Khoa Công nghệ thông tin',
    'Khoa Điện- Điện tử',
    'Khoa Giáo dục đại cương'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())   ) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
