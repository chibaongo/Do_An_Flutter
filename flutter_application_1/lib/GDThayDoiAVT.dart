import 'package:flutter/material.dart';

class ThayDoiAVT extends StatefulWidget {
  const ThayDoiAVT({super.key, required this.title});

  final String title;

  @override
  State<ThayDoiAVT> createState() => _ThayDoiAVT();
}

class _ThayDoiAVT extends State<ThayDoiAVT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/nen/nen.jpg'),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        shape: CircleBorder(),
                        minimumSize: Size.square(40),
                      ),
                      onPressed: (() {}),
                      child: Image.asset("assets/images/avatar/cat.png",
                          fit: BoxFit.cover, width: 60)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Ảnh đại diện có sẵn từ hệ thống',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/cat.png",
                                fit: BoxFit.cover, width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/cool.png",
                                fit: BoxFit.cover, width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/corgi.png",
                                fit: BoxFit.cover, width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset(
                                "assets/images/avatar/crocodile.png",
                                fit: BoxFit.cover,
                                width: 50))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset(
                                "assets/images/avatar/doberman.png",
                                fit: BoxFit.cover,
                                width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/dog.png",
                                fit: BoxFit.cover, width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/gojo.png",
                                fit: BoxFit.cover, width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/goku.png",
                                fit: BoxFit.cover, width: 50))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(top: BorderSide(width: 0.5))),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Ảnh đại diện bạn đã mua',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/horse.png",
                                fit: BoxFit.cover, width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset(
                                "assets/images/avatar/kingdom.png",
                                fit: BoxFit.cover,
                                width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/lion.png",
                                fit: BoxFit.cover, width: 50,),),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset(
                                "assets/images/avatar/naruto.png",
                                fit: BoxFit.cover,
                                width: 50))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset(
                                "assets/images/avatar/racoon.png",
                                fit: BoxFit.cover,
                                width: 60)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/shark.png",
                                fit: BoxFit.cover, width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset("assets/images/avatar/tiger.png",
                                fit: BoxFit.cover, width: 50)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              shape: CircleBorder(),
                              minimumSize: Size.square(40),
                            ),
                            onPressed: (() {}),
                            child: Image.asset(
                                "assets/images/avatar/tiger1.png",
                                fit: BoxFit.cover,
                                width: 50))
                      ],
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () => {},
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child:
                          Text('Đồng ý', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () => {},
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Trở lại',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
