import 'package:flutter/material.dart';

class LichSu extends StatefulWidget {
  const LichSu({super.key, required this.title});

  final String title;

  @override
  State<LichSu> createState() => _LichSuState();
}

class _LichSuState extends State<LichSu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/images/icon/logo1.png',
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 139, 196, 242),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/icon/history.png',
                            width: 45,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(70, 15, 30, 15),
                            child: Text(
                              'Lịch Sử Đấu ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 139, 196, 242),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/icon/ranking.png',
                            width: 45,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(70, 15, 30, 15),
                            child: Text(
                              'Hight Score ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 139, 196, 242),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/icon/solo.png',
                            width: 45,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(70, 15, 30, 15),
                            child: Text(
                              'Bảng Xếp Hạng',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
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
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Text('Quay lại'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
