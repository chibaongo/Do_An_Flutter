import 'package:flutter/material.dart';
import './Model/infoChoiCaNhan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      padding: const EdgeInsets.fromLTRB(0, 10, 30, 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/icon/xuongcho.png", width: 20),
                              const Text("1/5")
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 15)),
                          const Text(
                            'Vòng 2',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(0, 20, 80, 0)),
                        Image.asset("assets/images/icon/clock.png", width: 30),
                        Row(
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(fontSize: 20),
                            ),
                            const Text('s', style: TextStyle(fontSize: 20))
                          ],
                        ),
                      ],
                    ),
                  
                  ],
                )),
                Container(
                  child: Column(
                    children: [
                      const Text("Câu hỏi thứ 10: "),
                      const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 10, 30)),
                      const Text(
                        "Biển số xe số 62 là của tỉnh thành nào",
                        style: TextStyle(fontSize: 30),
                      ),
                      const Padding(
                          padding: EdgeInsets.fromLTRB(10, 30, 10, 30)),
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
                                      borderRadius:
                                          BorderRadius.circular(30.0)))),
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
