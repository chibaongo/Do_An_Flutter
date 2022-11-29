import 'package:flutter/material.dart';

class inforHightScore extends StatelessWidget {
  const inforHightScore({super.key, required this.dl});
  final duLieuHightScore dl;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              dl.TenPlayer,
              style: const TextStyle(color: Colors.red, fontSize: 20),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 139, 196, 242),
                  // border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    dl.Diem.toString(),
                    style: const TextStyle(
                        backgroundColor: Color.fromARGB(255, 139, 196, 242),
                        color: Colors.red,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}

class duLieuHightScore {
  const duLieuHightScore({required this.TenPlayer, required this.Diem});
  final String TenPlayer;
  final int Diem;
  static List<duLieuHightScore> lstDuLieuHightScore = [
    const duLieuHightScore(TenPlayer: "1.Player123456", Diem: 2000),
    const duLieuHightScore(TenPlayer: "2.Player123456", Diem: 1900),
    const duLieuHightScore(TenPlayer: "3.Player123456", Diem: 1800),
    const duLieuHightScore(TenPlayer: "4.Player123456", Diem: 1700),
    const duLieuHightScore(TenPlayer: "5.Player123456", Diem: 1600),
  ];
}
