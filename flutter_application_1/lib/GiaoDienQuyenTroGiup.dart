import 'dart:html';

import 'package:flutter/material.dart';
import './Model/infoQuyenTroGiup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                  child: Image.asset('assets/images/cam_xuc/question.png',width: 300,height: 300,),
            ),
          
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Bạn sẽ chọn quyền trợ giúp nào ?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              child: ListView.builder(
                itemCount: duLieuTroGiup.lstDuLieuTroGiup.length,
                itemBuilder: ((BuildContext context, int index) {
                  return inforTroGiup(
                      dltg: duLieuTroGiup.lstDuLieuTroGiup[index]);
                }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Lưu ý: Thời gian chỉ cộng thêm 10 giây !',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                    child: Text(
                      'Quay lại',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
