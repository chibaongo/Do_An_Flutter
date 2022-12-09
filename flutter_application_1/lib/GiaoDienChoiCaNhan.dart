import 'package:flutter/material.dart';
import './Model/infoChoiCaNhan.dart';
import 'Animation/Animation.dart';
import 'GiaoDienQuyenTroGiup.dart';
import 'TongKetCaNhanThua.dart';

class ChoiCaNhan extends StatefulWidget {
  const ChoiCaNhan({super.key, required this.title});
  final String title;

  @override
  State<ChoiCaNhan> createState() => _ChoiCaNhan();
}

class _ChoiCaNhan extends State<ChoiCaNhan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,0, 50, 10),
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text('8'),
                              ),
                              Image.asset("assets/images/icon/add.png",
                                  fit: BoxFit.cover, width: 20)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 30, 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/icon/xuongcho.png",
                                  width: 20),
                              const Text("1/5")
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 13)),
                          Container(
                              width: MediaQuery.of(context).size.width / 4.1,
                              height: MediaQuery.of(context).size.height / 15,
                              child: DoiMau(text: "Vòng 2"))
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(0, 20, 80, 0)),
                        Container(
                          width: MediaQuery.of(context).size.width / 7,
                          height: MediaQuery.of(context).size.height / 15,
                          child: Lac(image: "assets/images/icon/clock.png"),
                        ),
                      
                        Row(
                          children: [
                            Text(
                              '10',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('s', style: TextStyle(fontSize: 20))
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
                   Container(
                      child: Column(
                        children: [
                         Stack(
                          children: [
                            
                          // Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10)),
                          Container(
                              margin: EdgeInsets.only(top: 40),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/4.7,
                            decoration: BoxDecoration(
                              border: Border.all(width: 5,color: Color.fromARGB(255, 147, 41, 41)),
                              borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.3),
                            ),
                            child:
                            Padding(padding:EdgeInsets.fromLTRB(10, 20, 10, 10) ,
                            child: Text(
                              "Biển số xe 62 của tỉnh nào ?",
                              style: TextStyle(fontSize: 20,
                            ),)
                            )
                          ),
                           Container(
                            margin: EdgeInsets.fromLTRB(110, 15, 0, 0),
                            padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              border: Border.all(width: 5,color: Color.fromARGB(255, 147, 41, 41)),
                              borderRadius: BorderRadius.circular(22),
                              color: Color.fromARGB(255, 132, 188, 234)
                            ),
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Lv ",
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 34, 29),
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),),
                              Text("12",
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 34, 29),
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              )),
                            ],
                          )),
                          ],
                         )
                        ],
                      ),
                    ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: ListView.builder(
                    itemCount: duLieuCaNhan.lstDuLieuCaNhan.length,
                    itemBuilder: ((BuildContext context, int index) {
                      return inforCaNhan(
                          dlcn: duLieuCaNhan.lstDuLieuCaNhan[index]);
                    }),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset("assets/images/avatar/goku.png", width: 60),
                        Container(
                          width: MediaQuery.of(context).size.width / 7,
                          height: MediaQuery.of(context).size.height / 15,
                          child: ToNho(image: "assets/images/avatar/goku.png"),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Số câu đúng: "),
                        Text("9")
                      ],
                    )),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
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
                                        const QuyenTroGiup(title: '')));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Text('Trợ giúp',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
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
                                        const TongKetThua(title: '')));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                            child: Text(
                              'Thoát',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            )),
      ),
    );
  }
}
