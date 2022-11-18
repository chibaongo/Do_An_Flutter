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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/nen.jpg"), fit: BoxFit.cover),
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
                                "images/star.png",
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
                              Image.asset("images/add.png",
                                  fit: BoxFit.cover, width: 20)
                            ],
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                          Image.asset("images/clock.png", width: 30),
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
                              Image.asset("images/xuongcho.png", width: 20),
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
                              Image.asset("images/swords.png", width: 15),
                              Text("Đối thủ")
                            ],
                          ),
                          Image.asset("images/avatar/gojo.png", width: 40),
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
                      Image.asset("images/avatar/goku.png", width: 60),
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
