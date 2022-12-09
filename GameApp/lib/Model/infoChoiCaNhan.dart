import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inforCaNhan extends StatelessWidget {
  const inforCaNhan({super.key, required this.dlcn});
  final duLieuCaNhan dlcn;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 204, 201, 194),
      ),
      margin: const EdgeInsets.all(4),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 240, 234, 215)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
            child: Text(
              dlcn.dapan,
              style: const TextStyle(color: Colors.black),
            ),
          )),
    );
  }
}

class duLieuCaNhan {
  const duLieuCaNhan({required this.dapan});
  final String dapan;

  static List<duLieuCaNhan> lstDuLieuCaNhan = [
    const duLieuCaNhan(dapan: "A.Long An"),
    const duLieuCaNhan(dapan: "B.Bạc Liêu"),
    const duLieuCaNhan(dapan: "C.Cần Thơ"),
    const duLieuCaNhan(dapan: "D.Bình Dương."),

  ];
}
