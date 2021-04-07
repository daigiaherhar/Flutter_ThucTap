import 'package:flutter/material.dart';

class DetailWatching extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://i.pinimg.com/originals/65/be/69/65be696d11691d4350d6cc3aa00622c2.jpg",
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.5,
                ),
                Text(
                  "One Piece",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Thời lượng",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "24 phút",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Số tập",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "2/10",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Quốc gia",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Nhật",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Tác giả",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Oda",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Phát hành",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "2000",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Tóm tắt",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                        "Chào mừng đến với Việt One Piece Wiki, bách khoa toàn thư về anime và manga của One Piece, nơi mà mọi người đều có thể sửa. Vui lòng đóng góp cho trang web của chúng tôi và giúp chúng tôi hoàn thành mục tiêu xây dựng trang web nhiều thông tin nhất cho mọi thứ liên quan đến Eiichiro Oda và tác phẩm đáng chú ý nhất của anh ấy, One Piece trực tuyến. Thay mặt tất cả các biên tập viên ở đây tại One Piece Wiki cảm ơn bạn đã đóng góp."
                            "Chào mừng đến với Việt One Piece Wiki, bách khoa toàn thư về anime và manga của One Piece, nơi mà mọi người đều có thể sửa. Vui lòng đóng góp cho trang web của chúng tôi và giúp chúng tôi hoàn thành mục tiêu xây dựng trang web nhiều thông tin nhất cho mọi thứ liên quan đến Eiichiro Oda và tác phẩm đáng chú ý nhất của anh ấy, One Piece trực tuyến. Thay mặt tất cả các biên tập viên ở đây tại One Piece Wiki cảm ơn bạn đã đóng góp."),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
