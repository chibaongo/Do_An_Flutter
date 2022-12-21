import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/Thele_obj.dart';
import 'package:flutter_application_2/gg_Sigin/CuaHang.dart';
import 'package:flutter_application_2/gg_Sigin/GDTrangCaNhan.dart';
import 'package:flutter_application_2/gg_Sigin/GiaoDienLichSu.dart';
import 'package:flutter_application_2/gg_Sigin/giaodienchinh.dart';

class TheLeGG extends StatefulWidget {
  const TheLeGG({super.key, required this.title});
  final String title;

  @override
  State<TheLeGG> createState() => _TheLeState();
}

class _TheLeState extends State<TheLeGG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        constraints: const BoxConstraints.expand(),
        child: Container(
          padding: EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(50)),
                Text('Thể Lệ',
                    style: const TextStyle(color: Colors.red, fontSize: 50)),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ListView.builder(
                      itemCount: TheLeObject.lstTheLe.length,
                      itemBuilder: (context, index) {
                        return infoTheLe(dl: TheLeObject.lstTheLe[index]);
                      }),
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
                                            ThongTinCaNhanGG()));
                              }),
                              child: Image.asset("assets/images/icon/user.png",
                                  fit: BoxFit.cover, width: 30)),
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
                                      builder: (context) => LichSuGG(
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
                                        builder: (context) => HomeGG()));
                              },
                              child: Image.asset("assets/images/icon/home2.png",
                                  fit: BoxFit.cover, width: 40)),
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
                                      builder: (context) => CuaHangGG()));
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
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
