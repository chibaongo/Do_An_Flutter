import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/giaodienchinh.dart';
import 'package:http/http.dart';
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

class TaoAvt extends StatefulWidget {
  @override
  _TaoAvtState createState() {
    return _TaoAvtState();
  }
}

class _TaoAvtState extends State<TaoAvt> {
  Future createData(String avatar) async {
    setState(() {
      if (selectedIndex.isEmpty) {
        avataris = true;
      } else
        avataris = false;
    });
    try {
      if (avataris == false) {
        for (int i = 0; i < lsUsers.length; i++) {
          if (lsUsers[i].email == FirebaseAuth.instance.currentUser!.email) {
            FirebaseFirestore.instance
                .collection("users")
                .doc(lsUsers[i].id)
                .update({'avatar': avatar});
          }
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        }
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
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

  var selectedIndex = "";
  String avatar = "";

  var avatarerr = "Vui lòng chọn Avatar ";
  var avataris = false;

  List<Usera> lsUsers = [];

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
                email: r['email'],
                name: r['name'],
                avatar: r['avatar'],
                phone: r['phone'],
                password: r['password'],
                coin: r['coin'],
              );
              lsUsers.add(a);
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
                        height: 40,
                      ),
                      Image.asset("assets/images/icon/logo1.png",
                          width: MediaQuery.of(context).size.width / 2.5),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 6),
                        child: Text("Hãy chọn Avatar của bạn nào !",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
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
                                                  color:
                                                      selectedIndex == item.id
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
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 100),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                                  const Color.fromARGB(
                                                          255, 27, 247, 228)
                                                      .withOpacity(0.8)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)))),
                                      onPressed: () {
                                        createData(avatar);
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text('Đồng ý',
                                            style:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 100),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                                  const Color.fromARGB(
                                                          255, 27, 247, 228)
                                                      .withOpacity(0.8)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0)))),
                                      onPressed: () => {
                                        Navigator.of(context)
                                            .popUntil((route) => route.isFirst)
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text('Trở lại',
                                            style:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }

          return Text("");
        },
      ),
    );
  }
}
