import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Model/dulieuUser.dart';

class inforHightScore extends StatelessWidget {
   inforHightScore({super.key});
  // final duLieuHightScore dl;
  List<Usera> ls = [];
  int dem=0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.amber.withOpacity(0),
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("users").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
                for(var i=0;i<ls.length;i++){
                  for(var j=i;j<ls.length;j++)
                  {
                if(int.parse(ls[i].highscore)<int.parse(ls[j].highscore))
                                  {
                                    var temp=ls[i];
                                    ls[i]=ls[j];
                                    ls[j]=temp;
                  }
                  }
                 
                }
                return ListView.builder(
                   // itemCount: snapshot.data!.docs.take(10).length,
                   itemCount: ls.take(10).length,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      final data = snapshot.data!.docs[i];
                      final lsData=ls[i];
                      dem++;
                     
                      return 
                      SingleChildScrollView(child: 
                      Container(
                        
                          child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border: Border.all(width: 1, color: Colors.red),
                                  boxShadow:[BoxShadow(
                                    color: Color.fromARGB(255, 72, 30, 30),
                                    offset: Offset(3,3),
                                    blurRadius: 2,
                                  )] 
                                ),
                                child: Text(dem.toString()),
                              ),
                              
                              Text(
                               lsData.name,
                                style: const TextStyle(
                                    color: Colors.red, fontSize: 19),
                              ),
                              Expanded(child: Container()),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 5, 30, 5),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 139, 196, 242),
                                    // border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Text(
                                      lsData.highscore,
                                      style: const TextStyle(
                                          backgroundColor: Color.fromARGB(
                                              255, 139, 196, 242),
                                          color: Colors.red,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )));
                    });
              }
              return Text("Loadding");
            }));
  }
}


