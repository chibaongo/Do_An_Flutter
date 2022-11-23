
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GiaoDienChoiCaNhan.dart';
import 'package:flutter_application_1/giaodienchinh.dart';
import 'Model/dbcontext.dart';
import 'Components/itemTongKetCaNhan.dart';



class TongKetThua extends StatefulWidget {
  const TongKetThua({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<TongKetThua> createState() => _TongKetThua();
}

class _TongKetThua extends State<TongKetThua> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"), fit: BoxFit.cover),
        ),
        child:
        SingleChildScrollView(child: 
         Container(
          padding: const EdgeInsets.all(20),
         
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/cam_xuc/choSad.png",width:320,
              ),
             Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.asset('assets/images/cam_xuc/buon.png',width: 40),
                const Text(
                'Tổng kết',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              Image.asset('assets/images/cam_xuc/buon.png',width:40)
              ],),
             ),
              Container(
                child:Text("Chúc mừng bạn đã hoàn thành lượt chơi",
                style: TextStyle(color: Colors.red,
                fontSize: 15),) ,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                  borderRadius: BorderRadius.circular(20)
                ),


                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  itemCount: duLieuTongKetCaNhan.lstDuLieuTongKetCaNhan.length,
                  itemBuilder: ((BuildContext context, int index) {
                    return inforTongKetCaNhan(
                        dl: duLieuTongKetCaNhan.lstDuLieuTongKetCaNhan[index]);
                  }),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                       onPressed: ()
                  {
                    
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                    const ChoiCaNhan(title: '')));
                    
                  }, 
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Chơi tiếp',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                          onPressed: ()
                  {
                    
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                    const Home(title: '')));
                    
                  }, 
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child:
                          Text('Home', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
