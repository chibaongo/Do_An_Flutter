import 'package:flutter/material.dart';
import 'Components/CuaHang/itemStoreAvatar.dart';
import 'Components/CuaHang/itemStoteXu.dart';
import 'package:flutter_application_1/Model/dbcontext.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/giaodienchinh.dart';
class CuaHang extends StatefulWidget{
  const CuaHang({super.key});

  @override 
  State<CuaHang> createState()=> _CuaHang();

}
class _CuaHang extends State<CuaHang>{
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/nen/nen.jpg"), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/iconxu/star.png",
                      fit: BoxFit.cover,
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text('2'),
                    ),
                   Container(
                    // width: MediaQuery.of(context).size.width/5,
                    child: 
                    SizedBox(
                      width: 50,height: 20,
                      child: 
                   OutlinedButton(
                   
                    onPressed: (){}, 
                   child: Image.asset("assets/images/icon/add.png", fit: BoxFit.cover,  width:20)
                   )
                    )
                   ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/icon/store.png',
                      width: 80,
                    ),
                    Text(
                      "Cửa hàng",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    )
                  ],
                )),
                Container(
                  child: Text(
                    "Avatar",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 54, 53, 39),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          image: DecorationImage(
                              image: AssetImage("assets/images/nen/nenStr.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                      child: CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 1.5,
                            enlargeCenterPage: true),
                        items: DuLieuStore.lstDuLieuStore
                            .map((e) => Container(
                                  child: itemStoreAvatar(dlstr: e),
                                ))
                            .toList(),
                      ),
                    )),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: Text("Xu",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 54, 53, 39),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          image: DecorationImage(
                              image: AssetImage("assets/images/nen/nenStr.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                      child: CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 1.5,
                            enlargeCenterPage: true),
                        items: DuLieuStoreXu.lstDuLieuStoreXu
                            .map((e) => Container(
                                  child: itemStoreXu(dlstrXu: e),
                                ))
                            .toList(),
                      ),
                    )),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  const Color.fromARGB(255, 27, 247, 228)
                                      .withOpacity(0.8)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)))),
                          onPressed: () => {},
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Nạp tiền',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  const Color.fromARGB(255, 27, 247, 228)
                                      .withOpacity(0.8)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0)))),
                          onPressed: () => {
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Home(title: 'Home')))
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Thoát',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ]),
                )
              ],
            )),
      ),
    ));
  }
}