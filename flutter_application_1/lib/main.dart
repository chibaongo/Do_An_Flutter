import 'package:flutter/material.dart';
import 'package:flutter_application_1/QKMNhapMail.dart';
import 'GiaoDienDangKy.dart';
import 'giaodienchinh.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
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
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"), fit: BoxFit.cover),
        ),
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 120,
              ),
              Image.asset("assets/images/icon/logo1.png",
                  width: MediaQuery.of(context).size.width / 3.0),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text("Đăng nhập",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent)),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    decoration: InputDecoration(
                        labelText: "Tên đăng nhập",
                        labelStyle: TextStyle(color: Colors.redAccent),
                        prefixIcon: SizedBox(
                          width: 50,
                          child: Icon(Icons.people),
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
                
                  child: OutlinedButton(
                    onPressed: ()
                  {
                    
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                    const QMKNhapMail(title: 'Nhập mail')));
                    
                  }, 
                  style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
           
            ),
                  child: Text("Quên mật khẩu")
                  )
             
              ),
              const Padding(padding: EdgeInsets.all(6)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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
                    const Home(title: '')));
                    
                  }, 
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text('Đăng Nhập'),
                    ),
                  ),
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
                    const GiaoDienDangKy(title: '')));
                    
                  }, 
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text('Đăng Ký'),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Bạn có thể đăng nhập bằng',
                  style: TextStyle(fontSize: 16, color: Colors.redAccent),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Image.asset(
                    "assets/images/cam_xuc/fb.png",
                    width: MediaQuery.of(context).size.width / 9.0,
                  ),
                  Image.asset(
                    "assets/images/cam_xuc/gg.png",
                    width: MediaQuery.of(context).size.width / 9.0,
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
