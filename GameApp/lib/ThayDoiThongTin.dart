import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'GDTrangCaNhan.dart';
import 'Model/avatar_model.dart';
import 'Model/dulieuUser.dart';

List<Avatar> avatarImages = [
  Avatar(image: "assets/images/avatar/cat.png", id: "1"),
  Avatar(image: "assets/images/avatar/cool.png", id: "2"),
  Avatar(image: "assets/images/avatar/corgi.png", id: "3"),
  Avatar(image: "assets/images/avatar/crocodile.png", id: "4"),
  Avatar(image: "assets/images/avatar/doberman.png", id: "5"),
  Avatar(image: "assets/images/avatar/dog.png", id: "6"),
  Avatar(image: "assets/images/avatar/dogde.png", id: "7"),
  Avatar(image: "assets/images/avatar/kingdom.png", id: "8"),
  Avatar(image: "assets/images/avatar/shark.png", id: "9"),
  Avatar(image: "assets/images/avatar/tiger.png", id: "10"),
  Avatar(image: "assets/images/avatar/lion.png", id: "11"),
  Avatar(image: "assets/images/avatar/racoon.png", id: "12"),
];

class ThayDoiInfo extends StatefulWidget {
  @override
  State<ThayDoiInfo> createState() {
    return _ThayDoiAVT();
  }
}

class _ThayDoiAVT extends State<ThayDoiInfo> {
  final txtNewname = TextEditingController();
  var _nameErr = "Tên của bạn không hợp lệ !";
  var _nameIsvalid = false;

  var selectedIndex = "";
  String avatar = "";
  var avatarerr = "Vui lòng chọn Avatar ";
  var avataris = false;
  List<Usera> ls = [];
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  void dispose() {
    txtNewname.dispose();
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
              avatar: r['avatar'],
              password: r['password'],
              coin: r['coin'],
              highscore: r['highscore'],
              lv: r['lv'],
            );

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
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 6),
                  child: Text("Thay đổi name và avt của bạn",
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
                            controller: txtNewname,
                            style: TextStyle(color: Colors.blueGrey),
                            decoration: InputDecoration(
                              labelText: 'New name',
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
                SingleChildScrollView(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Wrap(
                            children: avatarImages
                                .map((item) => Container(
                                      margin: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 10,
                                              color: selectedIndex == item.id
                                                  ? Colors.pink
                                                  : Colors.grey)),
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            selectedIndex = item.id;
                                            avatar = item.image;
                                          });
                                        },
                                        icon: Image.asset(item.image),
                                        iconSize: 60,
                                      ),
                                    ))
                                .toList()),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(avataris ? avatarerr.toString() : "",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
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
                            updateNameAndAvt(txtNewname.text);
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
                                    builder: (context) => ThongTinCaNhan()));
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

  Future updateNameAndAvt(String name) async {
    setState(() {
      if (txtNewname.text.length < 3 || txtNewname.text.length >= 20) {
        _nameIsvalid = true;
      } else {
        _nameIsvalid = false;
      }
      if (selectedIndex.isEmpty) {
        avataris = true;
      } else
        avataris = false;
    });

    if (!_nameIsvalid && avataris == false) {
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
        } else {
          for (int i = 0; i < ls.length; i++) {
            if (ls[i].email == FirebaseAuth.instance.currentUser!.email) {
              FirebaseFirestore.instance
                  .collection("users")
                  .doc(ls[i].id)
                  .update({'name': txtNewname.text.trim(), 'avatar': avatar});
            }

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ThongTinCaNhan()));
          }
        }
      } on FirebaseException catch (e) {
        final snackBar = SnackBar(content: Text('Lỗi'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
}
