import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/TongKetCaNhanWin.dart';
import './Model/infoChoiCaNhan.dart';
import 'Animation/Animation.dart';
import 'GiaoDienQuyenTroGiup.dart';
import 'TongKetCaNhanThua.dart';
import 'Model/dbcontext.dart';

// factory Question.fromQueryDocumentSnapshot(QueryDocumentSnapshot snapshot){
//   final data=snapshot.data() as Map<String,dynamic>;
//   final id=snapshot.id;
//   data['id']=id;
//   return Question.fromMap(data);
// }
class ChoiCaNhan extends StatefulWidget {
  const ChoiCaNhan({super.key, required this.title});
  final String title;

  @override
  State<ChoiCaNhan> createState() => _ChoiCaNhan();
}

class _ChoiCaNhan extends State<ChoiCaNhan> {
//List<Question> questions=[];
  int _round=1;
  int _life=3;
  int _questionNumber = 1;
  late PageController _controller;
  int _score = 0;
  int _numberComplete = 0;
  int _numberCorrect = 0;
  int _exp = 0;
  bool _isLocked = false;
  //thời gian
  late Timer _timer;
  int _thoiGianTraLoi = 20;
  // firebase
  final _fireStore=FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (this.mounted) {
        setState(() {
          _thoiGianTraLoi--;

          if (_thoiGianTraLoi == 0) {
            _life--;
            if (_questionNumber < questions.length && _life>0) {
              if(_questionNumber%10==0){
                _round++;
              }
              _thoiGianTraLoi = 20;
              _controller.nextPage(
                duration: const Duration(milliseconds: 250),
                curve: Curves.bounceIn,
              );

              _questionNumber++;
              _isLocked = false;
            } else {
              Navigator.pop(context);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TongKetThang(
                            Complete: _numberComplete,
                            Correct: _numberCorrect,
                            score: _score,
                            exp: _exp,
                          )));
            }
          }
        });
      }
    });
    _controller = PageController(initialPage: 0);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      // StreamBuilder<QuerySnapshot>(
      //   stream: FirebaseFirestore.instance.collection("Questions").snapshots(),
      //   builder: (context,snapshot){
      //     if(!snapshot.hasData){
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //     final doc=snapshot.data!.docs;
      //     final lstQuestions=doc.map((e) => Question.fromQueryDocumentSnapshot(e)).toList();
      //     return 
        //  StreamBuilder<QuerySnapshot>(
        // stream: FirebaseFirestore.instance.collection("Questions").snapshots(),
        // builder: (context, snapshot) {
        //   if (snapshot.hasData) {
        //     final data = snapshot.data!.docs;

        //     for (var row in data) {
        //       final r = row.data() as Map<String, dynamic>;
        //       var a = Question(
        //           text: r['questions'],
        //           options: r['Answer'],
        //           id: r['id'],
        //           correct: r['correctAnswer']
        //          );
        //       questions.add(a);
        //     }
        //   }
        //   return  
           Container(
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
                               Text("$_life/3")
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 13)),
                          Container(
                              width: MediaQuery.of(context).size.width / 4.1,
                              height: MediaQuery.of(context).size.height / 15,
                              child: DoiMau(text: "Vòng $_round"))
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
                              _thoiGianTraLoi.toString(),
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
                        Text("Số câu đúng: "),
                        Text("$_numberCorrect/${questions.length}"),
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
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TongKetThang(
                                          Complete: _numberComplete,
                                          Correct: _numberCorrect,
                                          score: _score,
                                          exp: _exp,
                                        )));
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
      )
     //   })
      //   },
      // )
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
                            questions[0].text,
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
                            "Câu ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 36, 34, 29),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(_questionNumber.toString(),
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
                      _thoiGianTraLoi=_thoiGianTraLoi;
                    });
                    _isLocked = question.isLocked;
                    if (question.selectedoption!.isCorrect) {
                      _numberComplete++;
                      _numberCorrect++;
                      _exp++;
                        if(_thoiGianTraLoi<=20 && _thoiGianTraLoi>10)
                        {
                          _score=_score+4;
                        }
                        if(_thoiGianTraLoi<=10 && _thoiGianTraLoi>5)
                        {
                          _score+=3;
                        }
                        else {
                          _score++;
                          }
                    } else {
                      _life--;
                      _numberComplete++;
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
          if (_questionNumber < questions.length &&_life>0) {
            _thoiGianTraLoi = 20;
            if(_questionNumber%10==0){
                _round++;
              }
            _controller.nextPage(
              duration: const Duration(milliseconds: 250),
              curve: Curves.linear,
            );
            
            setState(() {
              _questionNumber++;
              _isLocked = false;
            });
          } else {
            if (this.mounted) {
              setState(() {
                Navigator.pop(context);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TongKetThang(
                              Complete: _numberComplete,
                              Correct: _numberCorrect,
                              score: _score,
                              exp: _exp,
                            )));
              });
            }
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
                  // questions[0],  
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





//  Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/images/nen/nen.jpg"),
//               fit: BoxFit.cover),
//         ),
//         child: Container(
//             margin: const EdgeInsets.all(20),
//             child: Column(
//               children: [
//                 Container(
//                     child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 50, 10),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Image.asset(
//                                 "assets/images/iconxu/star.png",
//                                 fit: BoxFit.cover,
//                                 width: 20,
//                               ),
//                               Container(
//                                 padding:
//                                     const EdgeInsets.fromLTRB(15, 0, 15, 0),
//                                 decoration: BoxDecoration(
//                                   border:
//                                       Border.all(width: 1, color: Colors.black),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: const Text('8'),
//                               ),
//                               Image.asset("assets/images/icon/add.png",
//                                   fit: BoxFit.cover, width: 20)
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 20, 30, 10),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Image.asset("assets/images/icon/xuongcho.png",
//                                   width: 20),
//                               const Text("1/5")
//                             ],
//                           ),
//                           const Padding(padding: EdgeInsets.only(bottom: 13)),
//                           Container(
//                               width: MediaQuery.of(context).size.width / 4.1,
//                               height: MediaQuery.of(context).size.height / 15,
//                               child: DoiMau(text: "Vòng 2"))
//                         ],
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Padding(padding: EdgeInsets.fromLTRB(0, 20, 80, 0)),
//                         Container(
//                           width: MediaQuery.of(context).size.width / 7,
//                           height: MediaQuery.of(context).size.height / 15,
//                           child: Lac(image: "assets/images/icon/clock.png"),
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               _thoiGianTraLoi.toString(),
//                               style: TextStyle(fontSize: 20),
//                             ),
//                             Text('s', style: TextStyle(fontSize: 20))
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 )),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height / 1.65,
//                   child: PageView.builder(
//                     itemCount: questions.length,
//                     controller: _controller,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemBuilder: (context, index) {
//                       final _question = questions[index];
//                       return buildQuestion(_question);
//                     },
//                   ),
//                 ),
//                 _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
//                 const SizedBox(
//                   height: 0,
//                 ),
//                 Container(
//                     margin: EdgeInsets.all(10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // Image.asset("assets/images/avatar/goku.png", width: 60),
//                         Container(
//                           width: MediaQuery.of(context).size.width / 7,
//                           height: MediaQuery.of(context).size.height / 15,
//                           child: ToNho(image: "assets/images/avatar/goku.png"),
//                         ),
//                         Padding(padding: EdgeInsets.all(5)),
//                         Text("Số câu đúng: "),
//                         Text("$_numberCorrect/${questions.length}"),
//                       ],
//                     )),
//                 Container(
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         ElevatedButton(
//                           style: ButtonStyle(
//                               backgroundColor: MaterialStatePropertyAll<Color>(
//                                   const Color.fromARGB(255, 27, 247, 228)
//                                       .withOpacity(0.8)),
//                               shape: MaterialStateProperty.all(
//                                   RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(30.0)))),
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         const QuyenTroGiup(title: '')));
//                           },
//                           child: const Padding(
//                             padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
//                             child: Text('Trợ giúp',
//                                 style: TextStyle(color: Colors.black)),
//                           ),
//                         ),
//                         ElevatedButton(
//                           style: ButtonStyle(
//                               backgroundColor: MaterialStatePropertyAll<Color>(
//                                   const Color.fromARGB(255, 27, 247, 228)
//                                       .withOpacity(0.8)),
//                               shape: MaterialStateProperty.all(
//                                   RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(30.0)))),
//                           onPressed: () {
//                             Navigator.pop(context);
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => TongKetThang(
//                                           Complete: _numberComplete,
//                                           Correct: _numberCorrect,
//                                           score: _score,
//                                           exp: _exp,
//                                         )));
//                           },
//                           child: const Padding(
//                             padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
//                             child: Text(
//                               'Thoát',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ),
//                         ),
//                       ]),
//                 ),
//               ],
//             )),
//       ),