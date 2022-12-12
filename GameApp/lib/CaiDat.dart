import 'package:flutter/material.dart';
import 'package:flutter_application_2/giaodienchinh.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';

class CaiDat extends StatefulWidget {
  const CaiDat({super.key});

  @override
  State<CaiDat> createState() => _CaiDat();
}

class _CaiDat extends State<CaiDat> {
  bool sound = true;
  bool music = true;
  @override
  Widget build(BuildContext context) {
    //    AssetsAudioPlayer playMusic=AssetsAudioPlayer();

    //  playMusic.open(Audio("assets/audios/TheAvengers.mp3"));

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/nen/nen.jpg"),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Image.asset(
                        'assets/images/icon/logo1.png',
                        width: 200,
                      )),
                  const Text(
                    'Cài đặt',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/icon/speaker.png',
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                        Switch(
                            value: sound,
                            activeColor: Color.fromARGB(255, 80, 93, 234),
                            onChanged: (bool value) {
                              setState(() {
                                sound = value;
                              });
                            }),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 40)),
                        Image.asset(
                          'assets/images/icon/music.png',
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        Padding(padding: EdgeInsets.only(left: 50)),
                        Switch(
                            value: music,
                            activeColor: Color.fromARGB(255, 80, 93, 234),
                            onChanged: (bool value) {
                              setState(() {
                                music = value;
                                // if(music==true)
                                // {
                                //   playMusic.pause();
                                //     playMusic.play();
                                // }
                                // else
                                // {
                                //   playMusic.pause();
                                // }
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              const Color.fromARGB(255, 27, 247, 228)
                                  .withOpacity(0.8)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()))
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Thoát',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
