import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/DangNhap.dart';
import 'Animation/Animation.dart';
import 'CaiDat.dart';
import 'CuaHang.dart';
import 'GDThayDoiMK.dart';
import 'GiaoDienLichSu.dart';
import 'GiaoDienNapTien.dart';
import 'ThayDoiThongTin.dart';
import 'TheLe.dart';
import 'giaodienchinh.dart';

class ThongTinCaNhan extends StatefulWidget {
  @override
  State<ThongTinCaNhan> createState() {
    return _ThongTinCaNhan();
  }
}

class _ThongTinCaNhan extends State<ThongTinCaNhan> {
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
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/gif/abc.gif"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                    builder: (context) =>
                                                        const NapTien(
                                                          title: '',
                                                        )));
                                          }),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 8,
                                          shape: const CircleBorder(),
                                          minimumSize: const Size.square(40),
                                        ),
                                        onPressed: (() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CaiDat()));
                                        }),
                                        child: Image.asset(
                                            "assets/images/cam_xuc/setting.png",
                                            fit: BoxFit.cover,
                                            width: 40))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      data['avatar'],
                                      fit: BoxFit.cover,
                                      width: 90,
                                    ),
                                    const Padding(padding: EdgeInsets.all(30)),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                4,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            child:
                                                const DoiMau(text: "Level 2")),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          data['name'],
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.redAccent),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ThayDoiInfo()));
                                            },
                                            child: const Text(
                                              'Thay đổi thông tin',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.blue),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: const [
                                    Text(
                                      'Thông tin khác',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border:
                                          Border(top: BorderSide(width: 0.5))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Số điện thoại',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          65, 0, 0, 0),
                                      child: Text(
                                        data['phone'],
                                        style: const TextStyle(
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
                                      border:
                                          Border(top: BorderSide(width: 0.5))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Email',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 0, 0, 0),
                                      child: Text(
                                        data['email'],
                                        style: const TextStyle(
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
                                      border:
                                          Border(top: BorderSide(width: 0.5))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Password',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          80, 0, 0, 0),
                                      child: Text(
                                        data['password'],
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 90,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 130),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                                    const Color.fromARGB(
                                                            255, 27, 247, 228)
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
                                                      DangNhap()));
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text('Đăng xuất',
                                              style:
                                                  TextStyle(color: Colors.red)),
                                        ),
                                      ),
                                    ),
                                  ]),
                              const Padding(padding: EdgeInsets.all(73)),
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
                                              shape: const CircleBorder(),
                                              minimumSize:
                                                  const Size.square(40),
                                            ),
                                            onPressed: (() {}),
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
                                            shape: const CircleBorder(),
                                            minimumSize: const Size.square(40),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LichSu(
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
                                              shape: const CircleBorder(),
                                              minimumSize:
                                                  const Size.square(40),
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
                                                style: OutlinedButton.styleFrom(
                                                  elevation: 8,
                                                  shape: const CircleBorder(),
                                                  minimumSize:
                                                      const Size.square(40),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              TheLe()));
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
                                            shape: const CircleBorder(),
                                            minimumSize: const Size.square(40),
                                          ),
                                          child: Image.asset(
                                              "assets/images/icon/shop.png",
                                              fit: BoxFit.cover,
                                              width: 40),
                                          onPressed: (() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const CuaHang()));
                                          }),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return const Text('Loading...');
        },
      ),
    );
  }
}
