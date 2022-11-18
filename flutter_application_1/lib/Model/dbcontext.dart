
class DuLieuStore{
  const DuLieuStore({required this.image, required this.caption, required this.price});
  final String image;
  final String caption;
  final int price;
  static List<DuLieuStore> lstDuLieuStore=[
    DuLieuStore(image: 'assets/images/avatar/luffy.png', caption: "Songoku", price: 8),
    DuLieuStore(image: 'assets/images/avatar/gojo.png', caption: "Gojo", price: 8),
    DuLieuStore(image: 'assets/images/avatar/naruto.png', caption: "Naruto", price: 10),
  ];
}
class DuLieuStoreXu{
  const DuLieuStoreXu({required this.xu, required this.price});
  final int xu;
  final int price;
  static List<DuLieuStoreXu> lstDuLieuStoreXu=[
    DuLieuStoreXu(xu: 8, price: 10000),
    DuLieuStoreXu(xu: 20, price: 20000),
    DuLieuStoreXu(xu: 70, price: 50000),
    DuLieuStoreXu(xu: 150, price: 100000),
    DuLieuStoreXu(xu: 400, price: 200000),
  ];
}
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
