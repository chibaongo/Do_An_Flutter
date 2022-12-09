import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/dbcontext.dart';

class itemStoreXu extends StatelessWidget {
  const itemStoreXu({super.key, required this.dlstrXu});
  final DuLieuStoreXu dlstrXu;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.blue),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/nen/nen.jpg",
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(.4),
              blurRadius: 7,
              offset: const Offset(10, 10),
            )
          ]),
      width: MediaQuery.of(context).size.width / 2,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
           "assets/images/iconxu/star.png",width: 100,
          ),
         Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(dlstrXu.xu.toString()),
                      Text(' Xu'),
                    ],
                  ),
          ElevatedButton(
              onPressed: () {},
              child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(dlstrXu.price.toString()),
                      Text(' VNĐ'),
                    ],
                  )))
        ],
      ),
    );
  }
}
