import 'package:flutter/material.dart';


class QMKNhapLaiMK extends StatefulWidget {
  const QMKNhapLaiMK({super.key, required this.title});

  final String title;

  @override
  State<QMKNhapLaiMK> createState() => _QMKNhapLaiMK();
}

class _QMKNhapLaiMK extends State<QMKNhapLaiMK> {

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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 200, 0),
                child: Text(
                  "Nhập mật khẩu mới ",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                child: const TextField(
                  style: TextStyle(color: Colors.redAccent),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.redAccent),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Mật khẩu mới',
                    hintStyle: TextStyle(color: Colors.redAccent),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 185, 0),
                child: Text(
                  "Nhập lại mật khẩu mới ",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                child: const TextField(
                  style: TextStyle(color: Colors.redAccent),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.redAccent),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Nhập lại mật khẩu',
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
                onPressed: () => {},
                child: 
                Container(
                  width: MediaQuery.of(context).size.width/2.2,
                  child: 
                 Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Image.asset('assets/images/icon/chanCho.png',width: 30,),
                    Text('Xác nhận', style: TextStyle(color: Colors.black)),
                    Image.asset('assets/images/icon/chanCho.png',width: 30,)
                  ],),
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
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
                          Text('Quay lại', style: TextStyle(color: Colors.black)),
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