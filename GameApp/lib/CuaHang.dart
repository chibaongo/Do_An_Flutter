import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/GiaoDienNapTien.dart';
import 'package:flutter_application_2/TheLe.dart';
import 'Components/CuaHang/itemStoreAvatar.dart';
import 'Components/CuaHang/itemStoteXu.dart';
import 'package:flutter_application_2/Model/dbcontext.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_2/giaodienchinh.dart';

import 'GDTrangCaNhan.dart';
import 'GiaoDienLichSu.dart';

class CuaHang extends StatefulWidget {
  const CuaHang({super.key});

  @override
  State<CuaHang> createState() => _CuaHang();
}

class _CuaHang extends State<CuaHang> {
  final crUser = FirebaseAuth.instance;
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
                        child: SingleChildScrollView(
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/iconxu/star.png",
                                        fit: BoxFit.cover,
                                        width: 30,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            25, 0, 25, 0),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text(data['coin']),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/icon/store.png',
                                        width: 80,
                                      ),
                                      Text(
                                        "Cửa hàng",
                                        style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      )
                                    ],
                                  )),
                                  Container(
                                    child: Text(
                                      "Avatar",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 54, 53, 39),
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/nen/nenStr.jpg"),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: CarouselSlider(
                                          options: CarouselOptions(
                                              autoPlay: true,
                                              aspectRatio: 1.5,
                                              enlargeCenterPage: true),
                                          items: DuLieuStore.lstDuLieuStore
                                              .map((e) => Container(
                                                    child: itemStoreAvatar(
                                                        dlstr: e),
                                                  ))
                                              .toList(),
                                        ),
                                      )),
                                  Padding(padding: EdgeInsets.all(10)),
                                  Container(
                                    child: Text("Xu",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 54, 53, 39),
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/nen/nenStr.jpg"),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: CarouselSlider(
                                          options: CarouselOptions(
                                              autoPlay: true,
                                              aspectRatio: 1.5,
                                              enlargeCenterPage: true),
                                          items: DuLieuStoreXu.lstDuLieuStoreXu
                                              .map((e) => Container(
                                                    child:
                                                        itemStoreXu(dlstrXu: e),
                                                  ))
                                              .toList(),
                                        ),
                                      )),
                                  Padding(padding: EdgeInsets.all(5)),
                                  Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStatePropertyAll<
                                                            Color>(
                                                        const Color.fromARGB(
                                                                255,
                                                                27,
                                                                247,
                                                                228)
                                                            .withOpacity(0.8)),
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
                                                          const NapTien(
                                                              title:
                                                                  'Nạp Tiền')));
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text('Nạp tiền',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                            ),
                                          ),
                                        ]),
                                  ),
                                  const Padding(padding: EdgeInsets.all(8)),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                                  fontSize: 16,
                                                  color: Colors.blueAccent),
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
                                                        builder: (context) =>
                                                            LichSu(
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
                                                  fontSize: 16,
                                                  color: Colors.blueAccent),
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
                                                          builder: (context) =>
                                                              Home()));
                                                },
                                                child: Image.asset(
                                                    "assets/images/icon/home2.png",
                                                    fit: BoxFit.cover,
                                                    width: 40)),
                                            const Text(
                                              'Home',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.blueAccent),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      elevation: 8,
                                                      shape: CircleBorder(),
                                                      minimumSize:
                                                          Size.square(40),
                                                    ),
                                                    onPressed: (() {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      TheLe()));
                                                    }),
                                                    child: Image.asset(
                                                        "assets/images/icon/book.png",
                                                        fit: BoxFit.cover,
                                                        width: 30))
                                              ],
                                            ),
                                            const Text(
                                              'Thể Lệ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.blueAccent),
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
                                              onPressed: (() {}),
                                            ),
                                            const Text(
                                              'Cửa Hàng',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.blueAccent),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      );
                    });
              }
              return Text('Loading');
            }));
  }
}
