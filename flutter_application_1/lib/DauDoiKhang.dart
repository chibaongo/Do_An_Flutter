import 'Components/DoiKhang.dart';
import 'package:flutter/material.dart';
import 'Model/dbcontext.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"), fit: BoxFit.cover),
        ),
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
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text('2'),
                              ),
                              Image.asset("assets/images/icon/add.png",
                                  fit: BoxFit.cover, width: 20)
                            ],
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                          Image.asset("assets/images/icon/clock.png", width: 30),
                             Padding(padding: EdgeInsets.only(top: 10)),
                          Row(children: [
                            Text('10',style: TextStyle(fontSize: 20),),
                            Text('s',style: TextStyle(fontSize: 20))
                          ],),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 30, 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/icon/xuongcho.png", width: 20),
                              Text("1/5")
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 15)),
                          Text(
                            'Vòng 2',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/icon/swords.png", width: 15),
                              Text("Đối thủ")
                            ],
                          ),
                          Image.asset("assets/images/avatar/gojo.png", width: 40),
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
                      Text("Câu hỏi thứ 12: "),
                      Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 30)),
                      Text(
                        "Việt nam có bao nhiêu tỉnh thành?",
                        style: TextStyle(fontSize: 30),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 30)),
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
                      Image.asset("assets/images/avatar/goku.png", width: 60),
                      Padding(padding: EdgeInsets.all(5)),
                    Text("Số câu đúng: "),
                    Text("9")
                  ],)
                ),
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
                                  borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: () => {},
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
                                  borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: () => {},
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
