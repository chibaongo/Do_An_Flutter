import 'package:flutter/material.dart';

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
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/nen.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: 
          SingleChildScrollView(child: 
          Column(
            children: [
              Text('Liên kết tài khoản ngân hàng'),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // thứ 1
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 295, 10),
                      child: Text("Tên chủ thẻ"),
                    ),
                    TextField(
                    
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          
                          borderSide:
                              BorderSide(width: 1, color: Colors.redAccent),
                        ),
                       
                        border: OutlineInputBorder(),
                        hintText: 'Tên chủ thẻ',
                        hintStyle: TextStyle(color: Colors.redAccent,),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),

                    // thứ 2
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 261, 10),
                      child: Text("Số CCCD/CMND"),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.redAccent),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Số CCCD/CMND',
                        hintStyle: TextStyle(color: Colors.redAccent),
                      ),
                    ),
 Padding(padding: EdgeInsets.all(10)),
                    //thứ 3
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 320, 10),
                      child: Text("Số thẻ"),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.redAccent),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Số thẻ',
                        hintStyle: TextStyle(color: Colors.redAccent),
                      ),
                    ),
                     Padding(padding: EdgeInsets.all(10)),
                  ],
                ),
              ),Padding(padding: EdgeInsets.all(10)),
              Container(
                child: Image.asset("images/TheNganHang.png"
                ,fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width/1.3,),
              ),
              Padding(padding: EdgeInsets.all(50)),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () => {},
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child:
                          Text('Liên kết', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                   ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () => {},
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child:
                          Text('Thoát', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ]),
              )
            ],
          ),
          )
        ),
      ),
    );
  }
}
