import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_project_moi_hoc/Model/Subjects.dart';

import '../Button/ButtonIcon.dart';
import 'HomePage_TabView_Subjects.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
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
                HomePage_TabView_1(),
                Text("123"),
              ],
            ),
          )),
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
