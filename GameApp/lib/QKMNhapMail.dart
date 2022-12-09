import 'package:flutter/material.dart';
import 'package:flutter_application_2/QMKNhapMXN.dart';


class QMKNhapMail extends StatefulWidget {
  const QMKNhapMail({super.key, required this.title});

  final String title;

  @override
  State<QMKNhapMail> createState() => _QMKNhapMail();
}

class _QMKNhapMail extends State<QMKNhapMail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/nen/nen.jpg"), fit: BoxFit.cover),
      ),
      child:
      SingleChildScrollView(child: 
       Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Image.asset('assets/images/icon/logo1.png',width: 200,)
              ),
            const Text(
              'Quên mật khẩu',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
          Padding(padding: EdgeInsets.only(top: 20),child: Text("Nhập Email đã đăng ký với tài khoản ",
            style: TextStyle(
              color: Colors.blue
            ),),
          ),
            const Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 50),child: 
            const TextField(
              style: TextStyle(color: Colors.redAccent),
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                ),
                border: OutlineInputBorder(),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.redAccent),
                
              ),
            ),
            ),
            ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context)=>
                            QMKNhapMXN(title: "Nhập mã xác nhận")))

                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Text('Lấy mã xác nhận',style: TextStyle(color: Colors.black)),
                  ),
            ),
            Padding(padding: EdgeInsets.only(top: 200),child: 
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
                    child: Text('Thoát',style: TextStyle(color: Colors.black)),
                  ),
                  
            ),

            ),
            Padding(padding: EdgeInsets.only(bottom: 100))
          ],
        ),
      ),
      )
    ),
    );
  }
}