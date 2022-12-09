import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class inforTroGiup extends StatelessWidget {
  const inforTroGiup({super.key, required this.dltg});
  final duLieuTroGiup dltg;
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
              dltg.trogiup,
              style: const TextStyle(color: Colors.black),
            ),
          )),
    );
  }
}

class duLieuTroGiup {
  const duLieuTroGiup({required this.trogiup});
  final String trogiup;

  static List<duLieuTroGiup> lstDuLieuTroGiup = [
    const duLieuTroGiup(trogiup: " 50/50"),
    const duLieuTroGiup(trogiup: " Đổi câu hỏi"),
    const duLieuTroGiup(trogiup: " Thêm thời gian"),
    const duLieuTroGiup(trogiup: " Mua đáp án"),
  ];
}
