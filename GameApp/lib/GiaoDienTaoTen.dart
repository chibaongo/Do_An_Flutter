import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/TaoAvt.dart';
import 'package:flutter_application_2/DangNhap.dart';
import 'package:flutter_application_2/Model/dulieuUser.dart';
import 'package:flutter_application_2/giaodienchinh.dart';

class TaoTen extends StatefulWidget {
  @override
  State<TaoTen> createState() {
    return _TaoTen();
  }
}

class _TaoTen extends State<TaoTen> {
  final txtName = TextEditingController();

  var _nameErr = "Vui lòng nhập tên của bạn vào !";
  var _nameIsvalid = false;

  List<Usera> ls = [];
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  void dispose() {
    txtName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("users").snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data!.docs;
          for (var row in data) {
            final r = row.data() as Map<String, dynamic>;
            var a = Usera(
                id: r['id'],
                name: r['name'],
                email: r['email'],
                phone: r['phone'],
                avatar: r['avatar']);

            ls.add(a);
          }
        }

        return Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/nen/nen.jpg'),
                      fit: BoxFit.cover)),
            ),
            SingleChildScrollView(
                child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 60,
                ),
                Image.asset("assets/images/icon/dog.png", width: 200),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 6),
                  child: Text("Tạo tên của bạn",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent)),
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                            controller: txtName,
                            style: TextStyle(color: Colors.blueGrey),
                            decoration: InputDecoration(
                              labelText: 'Nhập tên',
                              errorText: _nameIsvalid ? _nameErr : null,
                              errorStyle: const TextStyle(
                                  fontSize: 13, color: Colors.redAccent),
                              labelStyle: const TextStyle(color: Colors.blue),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.blue)),
                              border: OutlineInputBorder(),
                            ))),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  const Color.fromARGB(255, 27, 247, 228)
                                      .withOpacity(0.8)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)))),
                          onPressed: () {
                            createUserName(
                              txtName.text,
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Xác nhận',
                                style: TextStyle(color: Colors.black)),
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
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)))),
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DangNhap()));
                          }),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Trở lại',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ),
                    ]),
              ],
            )),
          ],
        );
      },
    ));
  }

  Future createUserName(String name) async {
    setState(() {
      if (txtName.text.length < 3) {
        _nameIsvalid = true;
      } else {
        _nameIsvalid = false;
      }
    });

    if (!_nameIsvalid) {
      try {
        var check = 0;
        for (int i = 0; i < ls.length; i++) {
          if (ls[i].name == name) check = 1;
        }
        if (check == 1) {
          final snackBar = SnackBar(
            content: Text('Tên này đã được sử dụng'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
         else {
          for (int i = 0; i < ls.length; i++) {
            if (ls[i].email == FirebaseAuth.instance.currentUser!.email) {
              FirebaseFirestore.instance
                  .collection("users")
                  .doc(ls[i].id)
                  .update({'name': txtName.text});
            }

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TaoAvt()));
          }
        }
      } on FirebaseException catch (e) {
        final snackBar = SnackBar(content: Text('Lỗi'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
}
