import 'package:flutter/material.dart';
import './Model/infoChoiCaNhan.dart';
import 'Animation/Animation.dart';
import 'GiaoDienQuyenTroGiup.dart';
import 'TongKetCaNhanThua.dart';
import 'Model/dbcontext.dart';

class ChoiCaNhan extends StatefulWidget {
  @override
  State<ChoiCaNhan> createState() {
    return _ChoiCaNhan();
  }
}

class _ChoiCaNhan extends State<ChoiCaNhan> {
  int _questionNumber = 1;
  late PageController _controller;
  int _score = 0;
  bool _isLocked = false;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 50, 10),
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text('8'),
                              ),
                              Image.asset("assets/images/icon/add.png",
                                  fit: BoxFit.cover, width: 20)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 30, 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/icon/xuongcho.png",
                                  width: 20),
                              const Text("1/5")
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 13)),
                          Container(
                              width: MediaQuery.of(context).size.width / 4.1,
                              height: MediaQuery.of(context).size.height / 15,
                              child: DoiMau(text: "Vòng 2"))
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(0, 20, 80, 0)),
                        Container(
                          width: MediaQuery.of(context).size.width / 7,
                          height: MediaQuery.of(context).size.height / 15,
                          child: Lac(image: "assets/images/icon/clock.png"),
                        ),
                        Row(
                          children: [
                            Text(
                              '10',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('s', style: TextStyle(fontSize: 20))
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.65,
                  child: PageView.builder(
                    itemCount: questions.length,
                    controller: _controller,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final _question = questions[index];
                      return buildQuestion(_question);
                    },
                  ),
                ),
                _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
                const SizedBox(
                  height: 0,
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset("assets/images/avatar/goku.png", width: 60),
                        Container(
                          width: MediaQuery.of(context).size.width / 7,
                          height: MediaQuery.of(context).size.height / 15,
                          child: ToNho(image: "assets/images/avatar/goku.png"),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Số câu : "),
                        Text("$_questionNumber/${questions.length}"),
                      ],
                    )),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const QuyenTroGiup(title: '')));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Text('Trợ giúp',
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TongKetThua()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                            child: Text(
                              'Thoát',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            )),
      ),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            children: [
              Stack(
                children: [
                  // Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10)),
                  Container(
                      margin: EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4.7,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 5, color: Color.fromARGB(255, 147, 41, 41)),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.3),
                      ),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                          child: Text(
                            question.text,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ))),
                  Container(
                      margin: EdgeInsets.fromLTRB(110, 15, 0, 0),
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 5,
                              color: Color.fromARGB(255, 147, 41, 41)),
                          borderRadius: BorderRadius.circular(22),
                          color: Color.fromARGB(255, 132, 188, 234)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lv ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 36, 34, 29),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text("12",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 36, 34, 29),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                        ],
                      )),
                ],
              )
              // Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 30)),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 5),
            child: Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: (option) {
                  if (question.isLocked) {
                    return;
                  } else {
                    setState(() {
                      question.isLocked = true;
                      question.selectedoption = option;
                    });
                    _isLocked = question.isLocked;
                    if (question.selectedoption!.isCorrect) {
                      _score++;
                    }
                  }
                },
              ),
            ))
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
        onPressed: () {
          if (_questionNumber < questions.length) {
            _controller.nextPage(
              duration: const Duration(milliseconds: 250),
              curve: Curves.bounceIn,
            );
            setState(() {
              _questionNumber++;
              _isLocked = false;
            });
          } else {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(score: _score)));
          }
        },
        child: Text(
            _questionNumber < questions.length ? 'Kế tiếp' : 'Xem kết quả'));
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;
  const OptionsWidget(
      {Key? key, required this.question, required this.onClickedOption})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: question.options
            .map((option) => buidOption(context, option))
            .toList(),
      ),
    );
  }

  Widget buidOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(6),
              child: Padding(
                padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                child: Text(
                  option.text,
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            getIconForOption(option, question)
          ],
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedoption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey.shade200;
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedoption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Icon(Icons.check_circle, color: Colors.green)
            : const Icon(
                Icons.cancel,
                color: Colors.red,
              );
      } else if (option.isCorrect) {
        return const Icon(Icons.check_circle, color: Colors.green);
      }
    }
    return const SizedBox.shrink();
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);
  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Yot got $score/${questions.length}'),
      ),
    );
  }
}
