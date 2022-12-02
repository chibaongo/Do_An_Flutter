import 'package:flutter/material.dart';
import 'package:flutter_application_1/CaiDat.dart';
import 'package:flutter_application_1/CuaHang.dart';
import 'package:flutter_application_1/GDTrangCaNhan.dart';
import 'package:flutter_application_1/GiaoDienChoiCaNhan.dart';
import 'package:flutter_application_1/GiaoDienLichSu.dart';
import 'package:flutter_application_1/GiaoDienNapTien.dart';
import 'package:flutter_application_1/TimPhong.dart';
import 'package:flutter_application_1/GDTrangCaNhan.dart';
import 'package:flutter_application_1/GiaoDienNapTien.dart';
import 'Animation/Animation.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
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
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('200000'),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              minimumSize: Size.square(20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NapTien(
                                            title: '',
                                          )));
                            },
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
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CaiDat()));
                        }),
                        child: Image.asset("assets/images/cam_xuc/setting.png",
                            fit: BoxFit.cover, width: 40))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 15,
                        child: DoiMau(text: "Level 2")),
                    const Padding(padding: EdgeInsets.all(10)),
                    Image.asset(
                      "assets/images/avatar/cool.png",
                      fit: BoxFit.cover,
                      width: 200,
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    const Text(
                      'Player #123456',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    ),
                    const Padding(padding: EdgeInsets.all(15)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(2.5, 4),
                            blurRadius: 1)
                      ], borderRadius: BorderRadius.circular(30)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                const Color.fromARGB(255, 27, 247, 228)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(30.0)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ChoiCaNhan(title: 'Nhập mail')));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icon/swords.png',
                              width: 45,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(25, 15, 30, 15),
                              child: Text(
                                'BẮT ĐẦU ',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(6)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(2.5, 4),
                            blurRadius: 1)
                      ], borderRadius: BorderRadius.circular(30)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                const Color.fromARGB(255, 27, 247, 228)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(30.0)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TimPhong(title: 'Tim phong')));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icon/sword.png',
                              width: 45,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(25, 15, 30, 15),
                              child: Text(
                                'ĐÁU XẾP HẠNG',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(6)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(2.5, 4),
                            blurRadius: 1)
                      ], borderRadius: BorderRadius.circular(30)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                const Color.fromARGB(255, 27, 247, 228)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(30.0)))),
                        onPressed: () => {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icon/log-out.png',
                              width: 45,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(25, 15, 30, 15),
                              child:
                                  Text('THOÁT', style: TextStyle(fontSize: 20)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(75)),
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
                            child: Image.asset("assets/images/icon/user.png",
                                fit: BoxFit.cover, width: 30)),
                        const Text(
                          'Hồ Sơ',
                          style:
                              TextStyle(fontSize: 16, color: Colors.blueAccent),
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
                          style:
                              TextStyle(fontSize: 16, color: Colors.blueAccent),
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
                            onPressed: (() {}),
                            child: Image.asset("assets/images/icon/home2.png",
                                fit: BoxFit.cover, width: 40)),
                        const Text(
                          'Home',
                          style:
                              TextStyle(fontSize: 16, color: Colors.blueAccent),
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
                          style:
                              TextStyle(fontSize: 16, color: Colors.blueAccent),
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
                          style:
                              TextStyle(fontSize: 16, color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}

//aa
