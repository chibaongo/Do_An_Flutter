import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheLeObject {
  const TheLeObject({required this.tieuDe});
  final String tieuDe;
  static List<TheLeObject> lstTheLe = [
    const TheLeObject(
        tieuDe:
            "Người chơi có  50 câu hỏi được chia làm 5 level: rất dễ, dễ, trung bình, khó, rất khó."),
    const TheLeObject(
        tieuDe:
            "Mỗi level sẽ có 10 câu hỏi được random ngẫu nhiên với từng độ khó. "),
    const TheLeObject(
        tieuDe: "Người chơi có 15 giây giảm dần để chọn đáp án đúng. "),
    const TheLeObject(
        tieuDe:
            "Ở level rất dễ có 50 point cho 10 câu hỏi (5 point/ câu). Nếu trả lời trong vòng 5 giây sẽ nhận được 5 point , 10 giây sẽ nhận được 3 point , 15 giây sẽ nhận được 1 point. "),
    const TheLeObject(
        tieuDe:
            "Ở level dễ có 70 point cho 10 câu hỏi (7 point/ câu). Nếu trả lời trong vòng 5 giây sẽ nhận được 7 point , 10 giây sẽ nhận được 4 point , 15 giây sẽ nhận được 2 point. "),
    const TheLeObject(
        tieuDe:
            "Ở level trung bình có 90 point cho 10 câu hỏi (9 point/ câu). Nếu trả lời trong vòng 5 giây sẽ nhận được 9 point , 10 giây sẽ nhận được 7 point , 15 giây sẽ nhận được 5 point."),
    const TheLeObject(
        tieuDe:
            "Ở level khó có 120 point cho 10 câu hỏi (12 point/ câu). Nếu trả lời trong vòng 5 giây sẽ nhận được 12 point , 10 giây sẽ nhận được 8 point , 15 giây sẽ nhận được 6 point. "),
    const TheLeObject(
        tieuDe:
            "Ở level rất khó có 150 point cho 10 câu hỏi (15 point/ câu). Nếu trả lời trong vòng 5 giây sẽ nhận được 15 point , 10 giây sẽ nhận được 11 point, 15 giây sẽ nhận được 7 point."),
    const TheLeObject(
        tieuDe:
            "Sau khi kết thúc trò chơi số point sẽ được tổng kết và lưu vào lịch sử của người chơi."),
  ];
}

class infoTheLe extends StatelessWidget {
  const infoTheLe({super.key, required this.dl});
  final TheLeObject dl;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          dl.tieuDe,
          style: const TextStyle(color: Colors.lightBlue, fontSize: 18),
        ),
      ],
    );
  }
}
