import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Đăng ký',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Đăng ký'),
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
  var username = "";
  var mail = "";
  var numberphone = "";
  var password = "";
  var confirmpass = "";
  var dulieu = "";
  TextEditingController txt_username = TextEditingController();
  TextEditingController txt_password = TextEditingController();
  void _dangKy() {
    setState(() {
      dulieu = "đăng ký thành công";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset : false,
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),

        body: Stack(
      children: <Widget>[
        Container(
          // padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/nen/nen.jpg'),
                  fit: BoxFit.cover)),
        ),
        ListView(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/images/icon/logo1.png',
                width: 300,
                height: 300,
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Đăng ký',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Nhập username',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        border: OutlineInputBorder(),
                        labelText: ' Nhập Mail',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Nhập số điện thoại',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Nhập password',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Nhập lại mật khẩu',
                        labelStyle: TextStyle(color: Colors.black)),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
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
                        Text('Đăng ký', style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
             
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Thoát', style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ],
    ));
  }
}
