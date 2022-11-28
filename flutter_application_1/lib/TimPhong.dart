import 'package:flutter/material.dart';
import 'package:flutter_application_1/DauDoiKhang.dart';
import 'package:flutter_application_1/giaodienchinh.dart';

class TimPhong extends StatefulWidget {
  const TimPhong({super.key, required this.title});

  final String title;

  @override
  State<TimPhong> createState() => _TimPhongState();
}

class _TimPhongState extends State<TimPhong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(10)),
                const TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Nhập ID',
                      labelStyle: TextStyle(color: Colors.redAccent),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromARGB(255, 27, 247, 228)),
                      ),
                      border: OutlineInputBorder(),
                      suffixIcon: SizedBox(
                          width: 50,
                          child: Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 27, 247, 228),
                          ))),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DauDoiKhang(title: "Nhập lại mật khẩu")))
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Text('ID phòng: 1234'),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Text('ID phòng: 2345'),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Text('ID phòng: 3456'),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Text('ID phòng: 4567'),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          const Color.fromARGB(255, 27, 247, 228)
                              .withOpacity(0.8)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: Text('ID phòng: 5678'),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              const Color.fromARGB(255, 27, 247, 228)
                                  .withOpacity(0.8)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: () => {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Tạo phòng'),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(20)),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              const Color.fromARGB(255, 27, 247, 228)
                                  .withOpacity(0.8)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Home(title: 'Home')));
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Text('Quay lại'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
