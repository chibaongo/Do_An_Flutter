import 'package:flutter_application_2/Model/dbcontext.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inforTongKetCaNhan extends StatelessWidget {
  const inforTongKetCaNhan({super.key, required this.dl});
  final duLieuTongKetCaNhan dl;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              dl.tieuDe,
              style: TextStyle(color: Colors.red,
              fontSize: 20),
              
            ),
            Expanded(child: Container()),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                decoration: BoxDecoration(
                  color:Color.fromARGB(255, 139, 196, 242),
                  // border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    dl.giaTri.toString(),
                    style: TextStyle(
                      backgroundColor: Color.fromARGB(255, 139, 196, 242),
                      color: Colors.red,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
