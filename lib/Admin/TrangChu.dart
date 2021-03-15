import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() => runApp(TrangChu());
class TrangChu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: TabView(),
    );
  }
}

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Admin'),
            // actions: [
            //   IconButton(
            //     icon: Icon(Icons.send),
            //     onPressed: () {
            //
            //     },
            //   )
            // ],
            bottom: TabBar(
              labelColor: Colors.amber,
              unselectedLabelColor: Colors.black,
              // tô đen khi chọn tabview đó
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.deepOrange),
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.headset_mic),
                ),
                Tab(
                  icon: Icon(Icons.engineering),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewKhoaHoc(),
              Text("123"),
            ],
          ),
        ));
  }
}

class ListViewKhoaHoc extends StatefulWidget {
  @override
  _ListViewKhoaHocState createState() => _ListViewKhoaHocState();
}

class _ListViewKhoaHocState extends State<ListViewKhoaHoc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RawMaterialButton(
            onPressed: () => _submit(),

            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  Text("Camera"),
                ],
              ),
            ),
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            fillColor: Colors.deepOrange,
            padding: EdgeInsets.all(20.0),
            splashColor: Colors.red,
            // hiệu ứng button
            shape: const StadiumBorder(),
          ),
          Card(
            margin: EdgeInsets.all(15),
            color: Colors.black12,
            child: Column(
              children: [
                Text("Khóa học C#"),
                Text("Khóa học C++"),
                Text("Khóa học Flutter"),
                Text("Khóa học Rect Native"),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(15),
            color: Colors.black12,
            child: Column(
              children: [
                Text("Khóa học C#"),
                Text("Khóa học C++"),
                Text("Khóa học Flutter"),
                Text("Khóa học Rect Native"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
_submit() {
  DatabaseReference database =
  FirebaseDatabase.instance.reference().child("subjects");
  database.push().set({
    'sID': "_txtUID.text",
    'sName': "_txtName.text",
    'iCount': "_txtPhone.text",
    'iPrice': 'hien tai chua co'
  });
}