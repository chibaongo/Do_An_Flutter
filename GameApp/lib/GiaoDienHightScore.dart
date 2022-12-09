import 'package:flutter/material.dart';
import 'package:flutter_application_2/GiaoDienLichSu.dart';
import 'Components/dulieuHightScore.dart';

class HightScore extends StatefulWidget {
  const HightScore({super.key, required this.title});

  final String title;

  @override
  State<HightScore> createState() => _HightScoreState();
}

class _HightScoreState extends State<HightScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'HIGHT SCORE',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  itemCount: duLieuHightScore.lstDuLieuHightScore.length,
                  itemBuilder: ((BuildContext context, int index) {
                    return inforHightScore(
                        dl: duLieuHightScore.lstDuLieuHightScore[index]);
                  }),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        const Color.fromARGB(255, 27, 247, 228)
                            .withOpacity(0.8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LichSu(title: 'Lịch Sử')));
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  child: Text('Quay lại'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
