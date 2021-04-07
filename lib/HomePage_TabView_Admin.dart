import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'View/CheckBoxCustom.dart';
import 'View/ButtonIcon.dart';
import 'View/TextFieldCustom.dart';

class AddMovie extends StatefulWidget {
  @override
  _AddMovieState createState() => _AddMovieState();
}

class _AddMovieState extends State<AddMovie> {
  bool _checkThanThoai = false;
  bool _checkKiemHiep = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFieldCustom(
                1, 26, "Tên phim", "", TextStyle(color: Colors.black26), false,
                (value) {
              setState(() {});
            }),
            TextFieldCustom(
                1, 26, "Thời lượng / phút", "", TextStyle(color: Colors.black26), false,
                (value) {
              setState(() {});
            }),
            TextFieldCustom(
                1, 26, "Số tập", "", TextStyle(color: Colors.black26), false,
                (value) {
              setState(() {});
            }),
            TextFieldCustom(
                1, 26, "Quốc gia", "", TextStyle(color: Colors.black26), false,
                (value) {
              setState(() {});
            }),
            TextFieldCustom(
                1, 26, "Tác giả", "", TextStyle(color: Colors.black26), false,
                (value) {
              setState(() {});
            }),
            TextFieldCustom(
                1, 4, "Năm phát hành", "", TextStyle(color: Colors.black26), false,
                (value) {
              setState(() {});
            }),
            TextFieldCustom(8, 26, "Mô tả", null,
                TextStyle(color: Colors.black26), false, (value) {
              setState(() {});
            }),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CheckBoxCustom(Text("Thần thoại"), _checkThanThoai, (value) {
                  setState(() {
                    _checkThanThoai = value;
                  });
                }), CheckBoxCustom(Text("Kiếm hiệp"), _checkKiemHiep, (value) {
                  setState(() {
                    _checkKiemHiep = value;
                  });
                }),
              ],
            ),
            ButtonIcon(
              onPressed: () {
                final snackBar =
                    SnackBar(content: Text(_checkThanThoai.toString() + _checkKiemHiep.toString()));

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(Icons.add),
              text: Text("sss"),
            )
          ],
        ),
      ),
    );
  }
}


