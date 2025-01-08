import 'package:flutter/material.dart';

import '../widget/widget_support.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20.0 right: 20;0 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,)),
            Image.asset("images/noir1.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5, fit: BoxFit.fill,
            ),
              const SizedBox(height: 15.0,),
              Text("Boggi Milano ", style: AppWidget.boldTextStyle()),
              Text("SET - Costume - black ", style: AppWidget.lightTextStyle()),
              Text("150 MAD/jr", style: AppWidget.semiboldTextStyle()),
              Row(children: [
                Text("Boggi Milano ", style: AppWidget.boldTextStyle()),
                Text("SET - Costume - black ", style: AppWidget.lightTextStyle()),
                Text("150 MAD/jr", style: AppWidget.semiboldTextStyle()),
                Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: const Icon(Icons.remove, color: Colors.white,),
                )
              ],)
            ],)
      ),
      
    );
  }
}
