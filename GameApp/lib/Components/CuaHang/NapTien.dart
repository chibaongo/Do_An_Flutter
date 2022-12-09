import 'package:flutter/material.dart';

class inforCuaHangNapTien extends StatelessWidget {
  const inforCuaHangNapTien({super.key, required this.dl});
  final duLieuCuaHangNapTien dl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 139, 196, 242),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      dl.images,
                      width: 30,
                    ),
                    Text(
                      dl.Gia,
                      style: const TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.yellow),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 22, 0, 22),
                    child: Text(
                      dl.Tien.toString(),
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }
}

class duLieuCuaHangNapTien {
  const duLieuCuaHangNapTien(
      {required this.Gia, required this.Tien, required this.images});
  final String Gia;
  final String Tien;
  final String images;
  static List<duLieuCuaHangNapTien> lstDuLieuCuaHang = [
    const duLieuCuaHangNapTien(
        Gia: "   8",
        images: 'assets/images/iconxu/star.png',
        Tien: ' 10.000 VND'),
    const duLieuCuaHangNapTien(
        Gia: "  20",
        images: 'assets/images/iconxu/dollar.png',
        Tien: ' 20.000 VND'),
    const duLieuCuaHangNapTien(
        Gia: "  70",
        images: 'assets/images/iconxu/coins-stack.png',
        Tien: ' 50.000 VND'),
    const duLieuCuaHangNapTien(
        Gia: " 150",
        images: 'assets/images/iconxu/coin.png',
        Tien: '100.000 VND'),
    const duLieuCuaHangNapTien(
        Gia: " 400",
        images: 'assets/images/iconxu/money-bag.png',
        Tien: '200.000 VND'),
    const duLieuCuaHangNapTien(
        Gia: "1000",
        images: 'assets/images/iconxu/gold (1).png',
        Tien: '500.000 VND'),
  ];
}
