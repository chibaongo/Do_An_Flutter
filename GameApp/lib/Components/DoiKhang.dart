import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/dbcontext.dart';

class inforDoiKhang extends StatelessWidget {
  const inforDoiKhang({super.key, required this.dldk});
  final duLieuDoiKhang dldk;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width/2,
      // height: MediaQuery.of(context).size.height/10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 204, 201, 194),
      ),
      // padding:EdgeInsets.fromLTRB(10, 25, 10, 25),
      margin: EdgeInsets.all(4),
      child: ElevatedButton(
          style: ButtonStyle(
            
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 240, 234, 215)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ))
          ),
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
            child: Text(
              dldk.dapan,
              style: TextStyle(
                
                  color: Colors.black),
            ),
          )),
    );
  }
}

