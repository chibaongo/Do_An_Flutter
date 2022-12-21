import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/giaodienchinh.dart';
import 'package:audioplayers/audioplayers.dart';

class CaiDat extends StatefulWidget {
  @override
  _CaiDat createState() {
    return _CaiDat();
  }
}

class _CaiDat extends State<CaiDat> {
  bool sound = false;
  bool music = false;
  final player = AudioPlayer();
  //final audioPlayer = AudioPlayer();
  //bool isPlaying = false;
  // playSound() async {
  //   AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  //   audioPlayer.open(Audio('assets/TheAvengers.mp3'));
  // }

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/gif/abc.gif"),
                fit: BoxFit.cover),
          ),
          constraints: const BoxConstraints.expand(),
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
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Image.asset(
                          'assets/images/icon/music.png',
                          width: MediaQuery.of(context).size.width / 3,
                        ),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Switch(
                            value: music,
                            activeColor: Color.fromARGB(255, 80, 93, 234),
                            onChanged: (bool value) {
                              setState(() {
                                music = value;
                                if (music == true) {
                                  player.play(AssetSource('TheAvengers.mp3'));
                                } else {
                                  player.stop();
                                }
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
                        Navigator.of(context).pop()
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Trở lại',
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
