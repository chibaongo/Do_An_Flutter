import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/GiaoDienTaoTen.dart';
import 'package:flutter_application_2/QKMNhapMail.dart';
import 'package:flutter_application_2/TaoAvt.dart';
import 'package:flutter_application_2/gg_Sigin/giaodienchinh.dart';
import 'package:flutter_application_2/services/firebase_services.dart';
import 'GiaoDienDangKy.dart';
import 'Model/dulieuUser.dart';
import 'giaodienchinh.dart';
import 'main.dart';
//import 'CaiDat.dart';

class DangNhap extends StatefulWidget {
  @override
  State<DangNhap> createState() {
    return _DangNhap();
  }
}

class _DangNhap extends State<DangNhap> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _showpass = false;

  var _emailErr = "Email không hợp lệ";
  var _passErr = "Mật khẩu không hợp lệ";
  var _emailIsvalid = false;
  var _passIsvalid = false;
  List<Usera> ls = [];

  final AuthMethods _authMethods = AuthMethods();
  @override
  void dispose() {
    txtEmail.dispose();
    txtPassword.dispose();
    super.dispose();
  }

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
                padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                child: Text("Đăng nhập",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent)),
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
                        errorStyle:
                            TextStyle(fontSize: 13, color: Colors.redAccent),
                        labelStyle: TextStyle(color: Colors.redAccent),
                        prefixIcon: SizedBox(
                          width: 50,
                          child: Icon(Icons.mail),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.redAccent)),
                        border: OutlineInputBorder(),
                      ))),

              Padding(
                  padding: EdgeInsets.all(12),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        controller: txtPassword,
                        obscureText: !_showpass,
                        style: TextStyle(color: Colors.blueGrey),
                        decoration: InputDecoration(
                          labelText: "Mật khẩu",
                          errorText: _passIsvalid ? _passErr : null,
                          errorStyle:
                              TextStyle(fontSize: 13, color: Colors.redAccent),
                          labelStyle: TextStyle(color: Colors.redAccent),
                          prefixIcon: SizedBox(
                            width: 50,
                            child: Icon(Icons.lock),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.redAccent)),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: GestureDetector(
                            onTap: onToppleShowPass,
                            child: _showpass
                                ? Icon(Icons.visibility,
                                    color: Colors.redAccent)
                                : Icon(Icons.visibility_off,
                                    color: Colors.redAccent)),
                      ),
                    ],
                  )),
              Container(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QMKNhapMail()));
                          },
                          child: Text(
                            "Quên mật khẩu ?",
                            style: TextStyle(fontSize: 20),
                          )))),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: GestureDetector(
                  // onTap: login,
                  onTap: () {
                    login(txtEmail.text, txtPassword.text);
                  },
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Center(
                        child: Text(
                          'Đăng Nhập',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28),
                        ),
                      )),
                ),
              ),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   child: ElevatedButton(
              //       style: ButtonStyle(
              //           backgroundColor: MaterialStatePropertyAll<Color>(
              //               const Color.fromARGB(255, 27, 247, 228)
              //                   .withOpacity(0.8)),
              //           shape: MaterialStateProperty.all(RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(30.0)))),
              //       onPressed: login,
              //       child: Padding(
              //         padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              //         child: const Text(
              //           'Đăng Nhập',
              //           style: TextStyle(fontSize: 30),
              //         ),
              //       )),
              // ),
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
                            builder: (context) => GiaoDienDangKy(),
                          ),
                        ).then((value) {
                          if (value != null) {
                            final snackBar = SnackBar(content: Text(value));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        });
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
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(2.5, 4),
                      blurRadius: 1)
                ], borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  onPressed: () async {
                    bool result = await _authMethods.signInWithGoogle();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeGG()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/cam_xuc/gg.png",
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Login with Gmail",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onToppleShowPass() {
    setState(() {
      _showpass = !_showpass;
    });
  }

  Future kiemtra() async {
    List<String> docID = [];

    await FirebaseFirestore.instance
        .collection("users")
        .get()
        .then((value) => value.docs.forEach((element) {
              docID.add(element.reference.id);
            }));
  }

  Future login(String name, String avatar) async {
    setState(() {
      if (txtEmail.text.length < 11 || !txtEmail.text.contains("@gmail.com")) {
        _emailIsvalid = true;
        //txtEmail.clear();
      } else {
        _emailIsvalid = false;
      }
      if (txtPassword.text.length < 6) {
        _passIsvalid = true;
      } else {
        _passIsvalid = false;
      }
    });

    if (!_emailIsvalid && !_passIsvalid) {
      try {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return const Center(child: CircularProgressIndicator());
            });
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: txtEmail.text.trim(), password: txtPassword.text.trim());
        Navigator.of(context).pop();

        FirebaseAuth.instance.authStateChanges().listen(
          (event) {
            {
              if (event != null) {
                txtEmail.clear();
                txtPassword.clear();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TaoTen()));
              } else {
                final snackBar =
                    SnackBar(content: Text('Email hoặc mật khẩu không đúng'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            }
          },
        );

        // _auth.authStateChanges().listen(
        //   (event) {
        //     if (event != null) {
        //       txtEmail.clear();
        //       txtPassword.clear();
        //    Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => Home()));
        //     } else {
        //       final snackBar =
        //           SnackBar(content: Text('Email hoặc mật khẩu không đúng'));
        //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //     }
        //   },
        // );
      } on FirebaseAuthException catch (e) {
        final snackBar =
            SnackBar(content: Text('Email hoặc mật khẩu không đúng'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      Navigator.of(context).pop();
    }
  }
}
