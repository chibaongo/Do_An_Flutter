import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/GiaoDienChoiCaNhan.dart';
import 'package:flutter_application_2/giaodienchinh.dart';
import 'Animation/Animation.dart';

class Wait extends StatefulWidget {
  const Wait({super.key});

  @override
  State<Wait> createState() => _Wait();
}

class _Wait extends State<Wait> {
  late Timer _timer;
  int time = 3;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (this.mounted) {
        setState(() {
          time--;
          if (time == 0) {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChoiCaNhan(title: ""),
                ));
          }
        });
      }
    });
  }

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
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(top:300 ),
                    child: Center(child: Text("Sẵn sàng!!",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),),)),
                  Container(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              margin: const EdgeInsets.all(10),
              child: DoiMauSo(text: time.toString(),)
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                padding: EdgeInsets.only(bottom: 100),
                child: Image.asset("assets/gif/Pikachu.gif"),)
                ],)
            )));
  }
}
