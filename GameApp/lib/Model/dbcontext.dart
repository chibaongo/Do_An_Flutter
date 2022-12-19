import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_2/GiaoDienChoiCaNhan.dart';
// dữ liệu cửa hàng
class DuLieuStore {
  const DuLieuStore(
      {required this.image, required this.caption, required this.price});
  final String image;
  final String caption;
  final int price;
  static List<DuLieuStore> lstDuLieuStore = [
    DuLieuStore(
        image: 'assets/images/avatar/goku.png', caption: "Songoku", price: 8),
    DuLieuStore(
        image: 'assets/images/avatar/gojo.png', caption: "Gojo", price: 8),
    DuLieuStore(
        image: 'assets/images/avatar/naruto.png', caption: "Naruto", price: 10),
  ];
}

class DuLieuStoreXu {
  const DuLieuStoreXu({required this.xu, required this.price});
  final int xu;
  final int price;
  static List<DuLieuStoreXu> lstDuLieuStoreXu = [
    DuLieuStoreXu(xu: 8, price: 10000),
    DuLieuStoreXu(xu: 20, price: 20000),
    DuLieuStoreXu(xu: 70, price: 50000),
    DuLieuStoreXu(xu: 150, price: 100000),
    DuLieuStoreXu(xu: 400, price: 200000),
  ];
}

// dữ liệu đối kháng
class duLieuDoiKhang {
  const duLieuDoiKhang({required this.dapan});
  final String dapan;

  static List<duLieuDoiKhang> lstDuLieuDoiKhang = [
    duLieuDoiKhang(dapan: "A.64"),
    duLieuDoiKhang(dapan: "B.63"),
    duLieuDoiKhang(dapan: "C.65"),
    duLieuDoiKhang(dapan: "D.66"),
  ];
}
// dữ liệu tổng kết cá nhân

class duLieuTongKetCaNhan {
  const duLieuTongKetCaNhan({required this.tieuDe, required this.giaTri});
  final String tieuDe;
  final int giaTri;
  static List<duLieuTongKetCaNhan> lstDuLieuTongKetCaNhan = [
    duLieuTongKetCaNhan(tieuDe: "Số câu hoàn thành:", giaTri: 1),
    duLieuTongKetCaNhan(tieuDe: "Số câu đúng:", giaTri: 1),
    duLieuTongKetCaNhan(tieuDe: "Tổng số điểm:", giaTri: 1),
    duLieuTongKetCaNhan(tieuDe: "Tổng số EXP:", giaTri: 1),
    duLieuTongKetCaNhan(tieuDe: "HighScore:", giaTri: 1),
  ];
}
// dữ liệu chơi cá nhân

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedoption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedoption,
  });

 


}

class Option {
  final String text;
  final bool isCorrect;
  const Option({required this.text, required this.isCorrect});
}

final questions = [
  Question(text: 'Việt nam có bao nhiêu tỉnh thành?', options: [
    const Option(text: '63', isCorrect: true),
    const Option(text: '64', isCorrect: false),
    const Option(text: '65', isCorrect: false),
    const Option(text: '62', isCorrect: false)
  ]),
  Question(text: 'Bình Dương thuộc vùng nào của Việt Nam?', options: [
    const Option(text: 'Bắc Trung Bộ', isCorrect: false),
    const Option(text: 'Nam Bộ', isCorrect: false),
    const Option(text: 'Đông Nam Bộ', isCorrect: true),
    const Option(text: 'Tây Nam Bộ', isCorrect: false)
  ]),
   Question(text: 'Tỉnh nào rộng nhất Việt Nam ', options: [
    const Option(text: 'Sơn La', isCorrect: false),
    const Option(text: 'Đăk Lăk', isCorrect: false),
    const Option(text: 'Gia Lai', isCorrect: false),
    const Option(text: 'Nghệ An', isCorrect: true)
  ]),
];
