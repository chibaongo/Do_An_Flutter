import 'Components/DoiKhang.dart';
import 'package:flutter/material.dart';
import 'GiaoDienTongKetChoiXepHang.dart';
import 'Model/dbcontext.dart';
import 'Animation/Animation.dart';
import 'GiaoDienQuyenTroGiup.dart';

class DauDoiKhang extends StatefulWidget {
  const DauDoiKhang({super.key, required this.title});

  final String title;

  @override
  State<DauDoiKhang> createState() => _DauDoiKhang();
}

class _DauDoiKhang extends State<DauDoiKhang> {
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
          child: SingleChildScrollView(
            child: Container(

                // padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 50, 10),
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
                                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.black),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text('2'),
                                  ),
                                  Image.asset("assets/images/icon/add.png",
                                      fit: BoxFit.cover, width: 20)
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                              Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 15,
                                child:
                                    Lac(image: "assets/images/icon/clock.png"),
                              ),
                              // Image.asset("assets/images/icon/clock.png", width: 30),
                              Padding(padding: EdgeInsets.only(top: 10)),
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
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 30, 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/icon/xuongcho.png",
                                      width: 20),
                                  Text("1/5")
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 15)),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width / 4.1,
                                  height:
                                      MediaQuery.of(context).size.height / 15,
                                  child: DoiMau(text: "Vòng 2"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/icon/swords.png",
                                      width: 15),
                                  Text("Đối thủ")
                                ],
                              ),
                              // Image.asset("assets/images/avatar/gojo.png", width: 40),
                              Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 15,
                                child: ToNho(
                                    image: "assets/images/avatar/gojo.png"),
                              ),
                              Text("Player#123455"),
                              Text("13/50")
                            ],
                          ),
                        )
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
                              "Việt nam có bao nhiêu tỉnh thành?",
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
                        itemCount: duLieuDoiKhang.lstDuLieuDoiKhang.length,
                        itemBuilder: ((BuildContext context, int index) {
                          return inforDoiKhang(
                              dldk: duLieuDoiKhang.lstDuLieuDoiKhang[index]);
                        }),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          
                            Container(
                              width: MediaQuery.of(context).size.width / 7,
                              height: MediaQuery.of(context).size.height / 15,
                              child:
                                  ToNho(image: "assets/images/avatar/cool.png"),
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
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          const Color.fromARGB(
                                                  255, 27, 247, 228)
                                              .withOpacity(0.8)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)))),
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const QuyenTroGiup(title: '')))
                              },
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                child: Text('Trợ giúp',
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          const Color.fromARGB(
                                                  255, 27, 247, 228)
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
                                            const TongKetChoiXepHang(
                                                title: '')));
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
          )),
    );
  }
}
