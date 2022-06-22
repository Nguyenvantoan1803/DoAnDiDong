import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dangnhap/dangnhap.dart';
import 'package:flutter_application_1/src/trangchu/caidat.dart';
import 'package:flutter_application_1/src/trangchu/trangchu.dart';

class hocbong extends StatefulWidget {
  @override
  _hocbongState createState() => _hocbongState();
}

class _hocbongState extends State<hocbong> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Học bổng-vay vốn'),
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
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text("Admin"),
                    accountEmail: Text("admin@caothang.edu.vn"),
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
                            MaterialPageRoute(builder: (context) => Caidat()));
                      },
                    ),
                  );
                })));
  }
}

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'Phòng đào tạo',
    'Đoàn thanh niên',
    'Phòng hành chính-quản trị',
    'Phòng CTCT-HSSV',
    'Khoa CNTT',
    'Học Bổng'
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
}
