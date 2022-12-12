import 'package:flutter/material.dart';
import 'package:flutter_application_2/giaodienchinh.dart';
import 'Components/CuaHang/NapTien.dart';

class NapTien extends StatefulWidget {
  const NapTien({super.key, required this.title});

  final String title;

  @override
  State<NapTien> createState() => _NapTienState();
}

class _NapTienState extends State<NapTien> {
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
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/iconxu/star.png",
                        fit: BoxFit.cover,
                        width: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text('200000'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(30)),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'NẠP TIỀN NÀO !!',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 1.0,
                    child: ListView.builder(
                      itemCount: duLieuCuaHangNapTien.lstDuLieuCuaHang.length,
                      itemBuilder: ((BuildContext context, int index) {
                        return inforCuaHangNapTien(
                            dl: duLieuCuaHangNapTien.lstDuLieuCuaHang[index]);
                      }),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(30)),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Text('Quay lại'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
