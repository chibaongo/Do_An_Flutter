import 'dart:io' show Platform, exit;
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/CaiDat.dart';
import 'package:flutter_application_2/CuaHang.dart';
import 'package:flutter_application_2/GDTrangCaNhan.dart';
import 'package:flutter_application_2/GiaoDienChoiCaNhan.dart';
import 'package:flutter_application_2/GiaoDienLichSu.dart';
import 'package:flutter_application_2/GiaoDienNapTien.dart';
import 'package:flutter_application_2/TheLe.dart';
import 'package:flutter_application_2/TimPhong.dart';
import 'package:flutter_application_2/GDTrangCaNhan.dart';
import 'package:flutter_application_2/GiaoDienNapTien.dart';
import 'package:flutter_application_2/WaitCaNhan.dart';
import 'Animation/Animation.dart';
import 'Model/dulieuUser.dart';
import 'WaitCaNhan.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final crUser = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("users")
            .where('email', isEqualTo: crUser.currentUser!.email)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              shrinkWrap: true,
              itemBuilder: (context, i) {
                final data = snapshot.data!.docs[i];

                return Container(
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
                                children: [
                                  Image.asset(
                                    "assets/images/iconxu/star.png",
                                    fit: BoxFit.cover,
                                    width: 30,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.black),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(data['coin']),
                                  ),
                                  GestureDetector(
                                    child: Image.asset(
                                      "assets/images/icon/add.png",
                                      fit: BoxFit.cover,
                                      width: 20,
                                    ),
                                    onTap: (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => NapTien(
                                                    title: '',
                                                  )));
                                    }),
                                  ),
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
                                  child: Image.asset(
                                      "assets/images/cam_xuc/setting.png",
                                      fit: BoxFit.cover,
                                      width: 40))
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
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  child: DoiMau(text: "Level 2")),
                              const Padding(padding: EdgeInsets.all(10)),
                              Image.asset(
                                data['avatar'],
                                fit: BoxFit.cover,
                                width: 190,
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                              Text(
                                data['name'],
                                style: TextStyle(
                                    fontSize: 25,
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
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              const Color.fromARGB(
                                                  255, 27, 247, 228)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      30.0)))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Wait()));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/icon/swords.png',
                                        width: 45,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(25, 15, 30, 15),
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
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              const Color.fromARGB(
                                                  255, 27, 247, 228)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      30.0)))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TimPhong(
                                                    title: 'Tim phong')));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/icon/sword.png',
                                        width: 45,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(25, 15, 30, 15),
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
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              const Color.fromARGB(
                                                  255, 27, 247, 228)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      30.0)))),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text(
                                            'Thoát ?',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                          content: const Text(
                                            'Bạn có thật sự muốn thoát game ?',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: (() {
                                                Navigator.of(context)
                                                    .pop(false);
                                              }),
                                              child: Text(
                                                "No",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: (() {
                                                if (Platform.isAndroid) {
                                                  SystemNavigator.pop();
                                                } else {
                                                  exit(0);
                                                }
                                              }),
                                              child: Text(
                                                "Yes",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/icon/log-out.png',
                                        width: 45,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(25, 15, 30, 15),
                                        child: Text('THOÁT',
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(60)),
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
                                                builder: (context) =>
                                                    ThongTinCaNhan()));
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
                                      onPressed: (() {}),
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
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => TheLe(
                                                          title: '',
                                                        )));
                                          },
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
                                    child: Image.asset(
                                        "assets/images/icon/shop.png",
                                        fit: BoxFit.cover,
                                        width: 40),
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
                );
              },
            );
          }
          return Text('Loading...');
        },
      ),
    );
  }
}
