import 'package:flutter/material.dart';

import 'CuaHang.dart';
import 'GDThayDoiAVT.dart';
import 'GDThayDoiMK.dart';
import 'GiaoDienLichSu.dart';
import 'giaodienchinh.dart';

class ThongTinCaNhan extends StatefulWidget {
  const ThongTinCaNhan({super.key, required this.title});

  final String title;

  @override
  State<ThongTinCaNhan> createState() => _ThongTinCaNhan();
}

class _ThongTinCaNhan extends State<ThongTinCaNhan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/iconxu/star.png",
                              fit: BoxFit.cover,
                              width: 30,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.black),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text('200000'),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  minimumSize: Size.square(20),
                                ),
                                onPressed: () {},
                                child: Image.asset("assets/images/icon/add.png",
                                    fit: BoxFit.cover, width: 20))
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset(
                                "assets/images/cam_xuc/setting.png",
                                fit: BoxFit.cover,
                                width: 40))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar/cool.png'),
                          backgroundColor: Colors.transparent,
                          radius: 30.0,
                        ),
                        Padding(padding: EdgeInsets.all(30)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'LEVEL 2',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Player : ',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                ),
                                Text(
                                  '#123456 ',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.red),
                                ),
                              ],
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ThayDoiAVT(title: '')));
                              },
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 8),
                                // foreground border
                              ),
                              child: Text('Thay đổi ảnh đại diện'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          'Thông tin khác',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(top: BorderSide(width: 0.5))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          'Tài khoản',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Text(
                            'baobao',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(top: BorderSide(width: 0.5))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          'Mật khẩu',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Text(
                            '*********',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ThayDoiMK(title: '')));
                            },
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 8),
                              // foreground border
                            ),
                            child: Text('Sửa'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(top: BorderSide(width: 0.5))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          'Số điện thoại',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                          child: Text(
                            '0123456789',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(top: BorderSide(width: 0.5))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(110, 0, 0, 0),
                          child: Text(
                            'abc@gmail.com',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                const Color.fromARGB(255, 27, 247, 228)
                                    .withOpacity(0.8)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(30.0)))),
                        onPressed: () => {},
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Đăng xuất',
                              style: TextStyle(color: Colors.red)),
                        ),
                      ),
                    ),
                  ]),
                  const Padding(padding: EdgeInsets.all(70)),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  elevation: 8,
                                  shape: CircleBorder(),
                                  minimumSize: Size.square(40),
                                ),
                                onPressed: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ThongTinCaNhan(
                                                title: '',
                                              )));
                                }),
                                child: Image.asset(
                                    "assets/images/icon/user.png",
                                    fit: BoxFit.cover,
                                    width: 30)),
                            const Text(
                              'Hồ Sơ',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueAccent),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                elevation: 8,
                                shape: CircleBorder(),
                                minimumSize: Size.square(40),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LichSu(
                                              title: '',
                                            )));
                              },
                              child: Image.asset(
                                  "assets/images/icon/history-book.png",
                                  fit: BoxFit.cover,
                                  width: 30),
                            ),
                            const Text(
                              'Lịch Sử',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueAccent),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  elevation: 8,
                                  shape: CircleBorder(),
                                  minimumSize: Size.square(40),
                                ),
                                onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home(
                                              title: '',
                                            )));
                                },
                                child: Image.asset(
                                    "assets/images/icon/home2.png",
                                    fit: BoxFit.cover,
                                    width: 40)),
                            const Text(
                              'Home',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueAccent),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      elevation: 8,
                                      shape: CircleBorder(),
                                      minimumSize: Size.square(40),
                                    ),
                                    onPressed: (() {}),
                                    child: Image.asset(
                                        "assets/images/icon/book.png",
                                        fit: BoxFit.cover,
                                        width: 30))
                              ],
                            ),
                            const Text(
                              'Thể Lệ',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueAccent),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                elevation: 8,
                                shape: CircleBorder(),
                                minimumSize: Size.square(40),
                              ),
                              child: Image.asset("assets/images/icon/shop.png",
                                  fit: BoxFit.cover, width: 40),
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CuaHang()));
                              }),
                            ),
                            const Text(
                              'Cửa Hàng',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueAccent),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
