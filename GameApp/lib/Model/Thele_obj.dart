import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheLeObject {
  const TheLeObject({required this.tieuDe});
  final String tieuDe;
  static List<TheLeObject> lstTheLe = [
    const TheLeObject(
        tieuDe:
            "Người chơi cần trả lời hết tổng 50 câu hỏi nếu muốn hoàn thành game.Có 5 level cho với độ khó tăng dần cho người chơi."),
    const TheLeObject(
        tieuDe:
            "Mỗi level gồm 10 câu hỏi.Trong  đó 10 câu hỏi được random ngẫu nhiên với từng độ khó khác nhau. "),
    const TheLeObject(
        tieuDe: "Với 5 độ khó tăng dần: rất dễ, dễ, trung bình, khó,rất khó. "),
    const TheLeObject(
        tieuDe:
            "Người chơi cần vượt qua từng độ khó 1 để hoàn thành trò chơi.Mỗi câu hỏi đều có thời gian trả lời (15s giảm dần). "),
    const TheLeObject(
        tieuDe:
            "nếu như hết thời gian vẫn chưa trả lời được câu hỏi thì coi như người chơi trả lời sai. "),
    const TheLeObject(
        tieuDe:
            "Người chơi được cung cấp sẵn 3 mạng. Khi hết mạng, người chơi trả lời sai sẽ kết thúc trò chơi với số point hiện tại và điểm exp (được dùng để tăng level của người chơi)."),
    const TheLeObject(
        tieuDe:
            "Với mỗi câu trả lời sai người hoặc hết thời gian trả lời câu hỏi thì chơi bị trừ đi 1 mạng. "),
    const TheLeObject(
        tieuDe:
            "Nếu lần chơi hiện tại kết thúc có số điểm cao hơn high score thì điểm high score sẽ được cập nhật."),
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
