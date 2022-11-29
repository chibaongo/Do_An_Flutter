import 'package:flutter/material.dart';
import 'package:flutter_application_1/GiaoDienLichSu.dart';
import 'Components/XepHang.dart';

class BangXepHang extends StatefulWidget {
  const BangXepHang({super.key, required this.title});

  final String title;

  @override
  State<BangXepHang> createState() => _BangXepHangState();
}

class _BangXepHangState extends State<BangXepHang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/icon/Winner.png',
                fit: BoxFit.cover,
                width: 100,
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                'Bảng Xếp Hạng',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.2,
                child: ListView.builder(
                  itemCount: duLieuXepHang.lstDuLieuXepHang.length,
                  itemBuilder: ((BuildContext context, int index) {
                    return inforXepHang(
                        dl: duLieuXepHang.lstDuLieuXepHang[index]);
                  }),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        const Color.fromARGB(255, 27, 247, 228)
                            .withOpacity(0.8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LichSu(title: 'Bảng Xếp Hạng')));
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Text('Quay lại'),
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
