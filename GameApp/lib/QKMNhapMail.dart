import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/QMKNhapMXN.dart';
import 'package:flutter_application_2/giaodienchinh.dart';

class QMKNhapMail extends StatefulWidget {
  @override
  State<QMKNhapMail> createState() {
    return _QMKNhapMail();
  }
}

class _QMKNhapMail extends State<QMKNhapMail> {
  TextEditingController txtEmail = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    txtEmail.dispose();
    super.dispose();
  }

  var _emailErr = "Email không hợp lệ";
  var _emailIsvalid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/nen/nen.jpg"),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Image.asset(
                        'assets/images/icon/logo1.png',
                        width: 200,
                      )),
                  const Text(
                    'Quên mật khẩu',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Text(
                      "Nhập Email đã đăng ký với tài khoản ",
                      style: TextStyle(fontSize: 15, color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(12),
                      child: TextField(
                          controller: txtEmail,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.blueGrey),
                          decoration: InputDecoration(
                            labelText: "Email",
                            errorText: _emailIsvalid ? _emailErr : null,
                            errorStyle: TextStyle(
                                fontSize: 13, color: Colors.redAccent),
                            labelStyle: TextStyle(color: Colors.redAccent),
                            prefixIcon: SizedBox(
                              width: 50,
                              child: Icon(Icons.mail),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Colors.redAccent)),
                            border: OutlineInputBorder(),
                          ))),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: passwordReset,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Text('Reset password',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              const Color.fromARGB(255, 27, 247, 228)
                                  .withOpacity(0.8)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: () => {Navigator.of(context).pop()},
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Thoát',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 100))
                ],
              ),
            ),
          )),
    );
  }

  Future passwordReset() async {
    setState(() {
      if (txtEmail.text.length < 11 || !txtEmail.text.contains("@gmail.com")) {
        _emailIsvalid = true;
      } else {
        _emailIsvalid = false;
      }
    });

    if (!_emailIsvalid) {
      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: txtEmail.text.trim());

        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Vui lòng kiểm tra Email của bạn !'),
            );
          },
        );
        txtEmail.clear();
      } on FirebaseAuthException catch (e) {
        final snackBar =
            SnackBar(content: Text('Email không đúng hoặc chưa đăng ký'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        // showDialog(
        //     context: context,
        //     builder: (context) {
        //       return AlertDialog(
        //         content: Text(e.message.toString()),
        //       );
        //     });
      }
    }
  }
}
