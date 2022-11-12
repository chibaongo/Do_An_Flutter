import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  const CircleAvatar(
                    // backgroundColor: Colors.grey,
                    //backgroundImage: AssetImage('assets/images/cat.png'),
                    radius: 30,
                    child: Icon(Icons.add),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Chọn ảnh đại diện ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Column(            
                children: [
                  Padding(padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/cat.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/cool.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/corgi.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/crocodile.png'),
                        radius: 30,
                      ),
                    ],
                  ),
                  ),
                  
                   Padding(padding: EdgeInsets.all(20),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/doberman.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/dog.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/gojo.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/goku.png'),
                        radius: 30,
                      ),
                    ],
                  ),),
                  Padding(padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/horse.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/kingdom.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/lion.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/naruto.png'),
                        radius: 30,
                      ),
                    ],
                  ),),
                   Padding(padding: EdgeInsets.all(20),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/racoon.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/shark.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/tiger.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar/tiger1.png'),
                        radius: 30,
                      ),
                    ],
                  ),),
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
                      child: Text('Đồng ý',
                          style: TextStyle(color: Colors.black)),
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
                      child:
                          Text('Trở lại', style: TextStyle(color: Colors.black)),
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
