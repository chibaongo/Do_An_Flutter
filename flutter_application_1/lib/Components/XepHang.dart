import 'package:flutter/material.dart';

class inforXepHang extends StatelessWidget {
  const inforXepHang({super.key, required this.dl});
  final duLieuXepHang dl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              dl.tieuDe,
              style: const TextStyle(color: Colors.red, fontSize: 20),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 139, 196, 242),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        dl.images,
                        width: 70,
                      ),
                      Text(
                        dl.giaTri.toString(),
                        style: const TextStyle(
                            backgroundColor: Color.fromARGB(255, 139, 196, 242),
                            color: Colors.white70,
                            fontSize: 20),
                      ),
                    ],
                  )),
            ),
          ],
        )
      ],
    );
  }
}

class duLieuXepHang {
  const duLieuXepHang(
      {required this.tieuDe, required this.giaTri, required this.images});
  final String tieuDe;
  final String giaTri;
  final String images;
  static List<duLieuXepHang> lstDuLieuXepHang = [
    duLieuXepHang(
        tieuDe: "1 Cao thủ:",
        images: 'assets/images/rank/rank bk.png',
        giaTri: 'III(369)'),
    duLieuXepHang(
        tieuDe: "2.Player123:",
        images: 'assets/images/rank/rank bk.png',
        giaTri: 'I(232'),
    duLieuXepHang(
        tieuDe: "3.Adm9:",
        images: 'assets/images/rank/rank bk.png',
        giaTri: 'III(212)'),
    duLieuXepHang(
        tieuDe: "4.TLK310:",
        images: 'assets/images/rank/rank bk.png',
        giaTri: 'II(190)'),
    duLieuXepHang(
        tieuDe: "5.Allin:",
        images: 'assets/images/rank/rank bk.png',
        giaTri: 'II(170)'),
    duLieuXepHang(
        tieuDe: "6.Class:",
        images: 'assets/images/rank/rank bk.png',
        giaTri: 'I(132)'),
  ];
}
