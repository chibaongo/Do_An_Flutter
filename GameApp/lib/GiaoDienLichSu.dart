import 'package:flutter/material.dart';
import 'package:flutter_application_2/GiaoDienBangXepHang.dart';
import 'package:flutter_application_2/GiaoDienHightScore.dart';
import 'package:flutter_application_2/giaodienchinh.dart';

import 'CuaHang.dart';
import 'GDTrangCaNhan.dart';

class LichSu extends StatefulWidget {
  const LichSu({super.key, required this.title});

  final String title;

  @override
  State<LichSu> createState() => _LichSuState();
}

class _LichSuState extends State<LichSu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/images/icon/logo1.png',
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  const Padding(padding: EdgeInsets.all(30)),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 139, 196, 242),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/icon/history.png',
                            width: 45,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(70, 15, 30, 15),
                            child: Text(
                              'Lịch Sử Đấu ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 139, 196, 242),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HightScore(title: 'Hight Score')));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/icon/ranking.png',
                            width: 45,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(70, 15, 30, 15),
                            child: Text(
                              'Hight Score ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 139, 196, 242),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BangXepHang(title: 'Bảng Xếp Hạng')));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/icon/solo.png',
                            width: 45,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(70, 15, 30, 15),
                            child: Text(
                              'Bảng Xếp Hạng',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(95)),
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
                                  fit: BoxFit.cover, width: 33),
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
