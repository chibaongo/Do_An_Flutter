import 'package:flutter/material.dart';
import 'package:flutter_application_1/QKMNhapMail.dart';
import 'GiaoDienDangKy.dart';
import 'giaodienchinh.dart';
import 'CaiDat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: DangNhap(title: ''),
    );
  }
}

class DangNhap extends StatefulWidget {
  const DangNhap({super.key, required this.title});

  final String title;

  @override
  State<DangNhap> createState() => _DangNhap();
}

class _DangNhap extends State<DangNhap> {
  @override
  Widget build(BuildContext context) {
  
    //    final assetAudioPlayer= AssetsAudioPlayer();
    //  assetAudioPlayer.open(
    //  Audio("assets/audios/j.mp3")
    //   );
  
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/nen/nen.jpg"),
                fit: BoxFit.cover),
          ),
          //constraints: const BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(20)),
              Image.asset(
                "assets/images/icon/logo1.png",
                width: MediaQuery.of(context).size.width / 2.0,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 15),
                child: Text("Đăng nhập",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent)),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.redAccent),
                        prefixIcon: SizedBox(
                          width: 50,
                          child: Icon(Icons.email),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.redAccent)),
                        border: OutlineInputBorder())),
              ),
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                          labelText: "Mật khẩu",
                          labelStyle: TextStyle(color: Colors.redAccent),
                          prefixIcon: SizedBox(
                            width: 50,
                            child: Icon(Icons.lock),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.redAccent)),
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.remove_red_eye,
                              color: Colors.redAccent)))),
              Container(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const QMKNhapMail(title: 'Nhập mail')));
                          },
                          child: const Text(
                            "Quên mật khẩu?",
                            style: TextStyle(fontSize: 20),
                          )))),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home(title: '')));
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: const Text(
                        'Đăng Nhập',
                        style: TextStyle(fontSize: 30),
                      ),
                    )),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Bạn chưa có tài khoản?',
                      style: TextStyle(fontSize: 20)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const GiaoDienDangKy(title: '')));
                      },
                      child: Text("Đăng ký", style: TextStyle(fontSize: 26))),
                ],
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                'Bạn có thể đăng nhập bằng',
                style: TextStyle(fontSize: 16, color: Colors.redAccent),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        shape: const CircleBorder(),
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        "assets/images/cam_xuc/fb.png",
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width / 9.0,
                      )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 8,
                      shape: const CircleBorder(),
                    ),
                    child: Image.asset(
                      "assets/images/cam_xuc/gg.png",
                      width: MediaQuery.of(context).size.width / 9.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
