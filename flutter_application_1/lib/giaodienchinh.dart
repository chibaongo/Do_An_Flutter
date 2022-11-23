import 'package:flutter/material.dart';
import 'package:flutter_application_1/GiaoDienChoiCaNhan.dart';
import 'package:flutter_application_1/main.dart';


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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 50, 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/iconxu/star.png",
                              fit: BoxFit.cover,
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text('2'),
                            ),
                            Image.asset("assets/images/icon/add.png",
                                fit: BoxFit.cover, width: 20)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/cam_xuc/setting.png",
                            width: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Level 1',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  Image.asset(
                    "assets/images/avatar/lion.png",
                    fit: BoxFit.cover,
                    width: 120,
                  ),
                  const Text(
                    'Player #123456',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: ()
                  {
                    
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                    const ChoiCaNhan(title: 'Nhập mail')));
                    
                  }, 
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/cam_xuc/guom.png',
                                width: 45,
                              ),
                            ],
                          ),
                          const Text(
                            'BẮT ĐẦU',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(6)),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () => {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Text(
                        'LỊCH SỬ',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(6)),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () => {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        'ĐIỂM CAO',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(6)),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: ()
                  {
                    
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                    const DangNhap(title: '')));
                    
                  }, 
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(27, 10, 27, 10),
                      child: Text(
                        'THOÁT',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/avatar/dogde.png',
                              fit: BoxFit.cover,
                              width: 55,
                            ),
                          ],
                        ),
                        const Text(
                          'Hồ Sơ',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icon/home2.png',
                              fit: BoxFit.cover,
                              width: 55,
                            ),
                          ],
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icon/swords.png',
                              fit: BoxFit.cover,
                              width: 50,
                            ),
                          ],
                        ),
                        const Text(
                          'Xếp hạng',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icon/store.png',
                              fit: BoxFit.cover,
                              width: 55,
                            ),
                          ],
                        ),
                        const Text(
                          'Cửa hàng',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
          // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}

// 
