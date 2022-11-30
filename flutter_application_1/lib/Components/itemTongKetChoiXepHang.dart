import 'package:flutter/material.dart';

class inforTongKetXepHang extends StatelessWidget {
  const inforTongKetXepHang({super.key, required this.dl});
  final duLieuTongKetXepHang dl;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              dl.tieuDe,
              style: const TextStyle(color: Colors.red, fontSize: 18),
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
                    dl.giaTri.toString(),
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

class duLieuTongKetXepHang {
  const duLieuTongKetXepHang({required this.tieuDe, required this.giaTri});
  final String tieuDe;
  final int giaTri;
  static List<duLieuTongKetXepHang> lstDuLieuTongKetCaNhan = [
    const duLieuTongKetXepHang(tieuDe: "Số câu hoàn thành:", giaTri: 30),
    const duLieuTongKetXepHang(tieuDe: "Số câu đúng:", giaTri: 20),
    const duLieuTongKetXepHang(tieuDe: "Tổng số điểm:", giaTri: 80),
    const duLieuTongKetXepHang(tieuDe: "Tổng số EXP:", giaTri: 50),
    const duLieuTongKetXepHang(tieuDe: "HighScore:", giaTri: 10),
  ];
}
