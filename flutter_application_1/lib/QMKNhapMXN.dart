import 'package:flutter/material.dart';
import 'package:flutter_application_1/QMKNhapLaiMK.dart';



class QMKNhapMXN extends StatefulWidget {
  const QMKNhapMXN({super.key, required this.title});

  final String title;

  @override
  State<QMKNhapMXN> createState() => _QMKNhapMXN();
}

class _QMKNhapMXN extends State<QMKNhapMXN> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(
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
          Padding(padding: EdgeInsets.only(top: 20),child: Text("Nhập mã xác nhận ",
            style: TextStyle(
              color: Colors.blue
            ),),
          ),
            const Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 20),child: 
            const TextField(
              style: TextStyle(color: Colors.redAccent),
              decoration: InputDecoration(
                // icon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.redAccent),
                ),
                border: OutlineInputBorder(),
                hintText: 'Mã xác nhận',
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
QMKNhapLaiMK(title: "Nhập lại mật khẩu")))

                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(45, 20, 45, 20),
                    child: Text('Xác nhận',style: TextStyle(color: Colors.black)),
                  ),
            ),
            Padding(padding: EdgeInsets.all(10)),
             ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                    child: Text('Gửi lại mã xác nhận',style: TextStyle(color: Colors.black)),
                  ),
            ),
             

            Padding(padding: EdgeInsets.only(top: 150),child: 
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
                    child: Text('Quay lại',style: TextStyle(color: Colors.black)),
                  ),
            ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 100))
          ],
        ),
      ),
    ),
       )
    );

  }
}