import 'package:flutter/material.dart';
import 'package:flutter_application_2/TimPhong.dart';

import 'DauDoiKhang.dart';

class PhongCho extends StatefulWidget {
  const PhongCho({super.key, required this.title});

  final String title;

  @override
  State<PhongCho> createState() => _PhongCho();
}

class _PhongCho extends State<PhongCho> {
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
                                  minimumSize: Size.square(10),
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
                                width: 40)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ID : ',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Text(
                          '8585',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/avatar/cool.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        Image.asset(
                          'assets/images/icon/swords.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/avatar/gojo.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'BaoBao',
                          style: TextStyle(fontSize: 16, color: Colors.red),
                        ),
                        Padding(padding: EdgeInsets.zero),
                        Text(
                          'BaoBap',
                          style: TextStyle(fontSize: 16, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Kim cương 2',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.all(15)),
                        Text(
                          'Kim cương 1',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/rank/rank kcc.png'),
                          backgroundColor: Colors.transparent,
                          radius: 60.0,
                        ),
                        Padding(padding: EdgeInsets.all(40)),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/rank/rank kcc.png'),
                          backgroundColor: Colors.transparent,
                          radius: 60.0,
                        ),
                      ],
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 80),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        const Color.fromARGB(255, 27, 247, 228)
                                            .withOpacity(0.8)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DauDoiKhang(title: "")));
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Text('Bắt đầu',
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        const Color.fromARGB(255, 27, 247, 228)
                                            .withOpacity(0.8)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)))),
                            onPressed: () {
                              Navigator.pop(context);
                               Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TimPhong(title: "")));
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Thoát',
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
