import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/dbcontext.dart';
import 'Components/itemTongKetCaNhan.dart';

class TongKetThang extends StatefulWidget {
  const TongKetThang({super.key, required this.title});

  final String title;

  @override
  State<TongKetThang> createState() => _TongKetThang();
}

class _TongKetThang extends State<TongKetThang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/icon/Winner.png",
                width: 320,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('- assets/images/cam_xuc/funny.png', width: 40),
                    const Text(
                      'Tổng kết',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    ),
                    Image.asset('assets/images/cam_xuc/funny.png', width: 40)
                  ],
                ),
              ),
              Container(
                child: Text(
                  "Chúc mừng bạn đã hoàn thành lượt chơi",
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.red),
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  itemCount: duLieuTongKetCaNhan.lstDuLieuTongKetCaNhan.length,
                  itemBuilder: ((BuildContext context, int index) {
                    return inforTongKetCaNhan(
                        dl: duLieuTongKetCaNhan.lstDuLieuTongKetCaNhan[index]);
                  }),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                      child: Text('Chơi tiếp',
                          style: TextStyle(color: Colors.black)),
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
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child:
                          Text('Home', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
