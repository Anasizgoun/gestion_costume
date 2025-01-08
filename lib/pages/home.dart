import 'package:flutter/material.dart';
import 'package:gestion_costume/pages/details.dart';
import 'package:gestion_costume/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home ({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
bool bleu=false, blanc=false, noir=false, or=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20.0, top: 50.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text(
                "Bonjour anas",
                style:AppWidget.boldTextStyle()
            ),

          Container(
          padding: const EdgeInsets.all(3),
          child:  const Icon(Icons.person, color:  Colors.black,)
          )

        ],
       ),

              const SizedBox(height: 10.0,),
              Text(
                "Nos Costumes ",
              style: AppWidget.headTextStyle(),),

              Text(
                " Couleurs disponibles : ",
                style: AppWidget.lightTextStyle(),),
                const SizedBox(height: 20.0,),
              showItem(),
              const SizedBox(height: 30.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
// pictures of costumes 
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Details())
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(6),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                            mainAxisAlignment: MainAxisAlignment.center,   // Center vertically
                            children: [
                              Image.asset(
                                "images/noir1.png", height: 160, width: 150, fit: BoxFit.cover,
                              ),
                              Text("Boggi Milano ", style: AppWidget.boldTextStyle()),
                              Text("SET - Costume - black ", style: AppWidget.lightTextStyle()),
                              Text("150 MAD", style: AppWidget.semiboldTextStyle()),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10.0,),

                    Container(
                      margin: const EdgeInsets.all(6),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                          mainAxisAlignment: MainAxisAlignment.center,   // Center vertically
                          children: [
                            Image.asset(
                              "images/noir1.png", height: 160, width: 150, fit: BoxFit.cover,
                            ),
                            Text("Boggi Milano ", style: AppWidget.boldTextStyle()),
                            Text("SET - Costume - black ", style: AppWidget.lightTextStyle()),
                            Text("150 MAD", style: AppWidget.semiboldTextStyle()),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.all(6),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                          mainAxisAlignment: MainAxisAlignment.center,   // Center vertically
                          children: [
                            Image.asset(
                              "images/noir1.png", height: 160, width: 150, fit: BoxFit.cover,
                            ),
                            Text("Boggi Milano ", style: AppWidget.boldTextStyle()),
                            Text("SET - Costume - black ", style: AppWidget.lightTextStyle()),
                            Text("150 MAD", style: AppWidget.semiboldTextStyle()),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.all(6),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                          mainAxisAlignment: MainAxisAlignment.center,   // Center vertically
                          children: [
                            Image.asset(
                              "images/noir1.png", height: 160, width: 150, fit: BoxFit.cover,
                            ),
                            Text("Boggi Milano ", style: AppWidget.boldTextStyle()),
                            Text("SET - Costume - black ", style: AppWidget.lightTextStyle()),
                            Text("150 MAD", style: AppWidget.semiboldTextStyle()),
                          ],
                        ),
                      ),
                    ),

                ],),
              )



         ],
        ),

      ) ,
    );
  }
Widget showItem(){
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [
    GestureDetector(
    onTap: (){
    bleu=true;
    blanc=false;
    noir=false;
    or=false;
    setState(() {

    });
    },




    child: Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(10),
    child: Container(
    decoration: BoxDecoration(color: bleu?Colors.blue: Colors.white, borderRadius: BorderRadius.circular(5)),
    padding: const EdgeInsets.all(8),
    child: Image.asset("images/bleu.jpg", height: 60, width: 50, fit: BoxFit.cover,),
    ),
    ),
    ),

    GestureDetector(
    onTap: (){
    bleu=false;
    blanc=true;
    noir=false;
    or=false;
    setState(() {

    });
    },
    child: Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(10),
    child: Container(
    decoration: BoxDecoration(color: blanc?Colors.black12: Colors.white, borderRadius: BorderRadius.circular(5)),
    padding: const EdgeInsets.all(8),
    child: Image.asset("images/blanc.jpg", height: 60, width: 50, fit: BoxFit.cover,),
    ),
    ),
    ),

    GestureDetector(
    onTap: (){
    bleu=false;
    blanc=false;
    noir=true;
    or=false;
    setState(() {

    });
    },
    child: Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(10),
    child: Container(
    decoration: BoxDecoration(color: noir?Colors.black: Colors.white, borderRadius: BorderRadius.circular(5)),
    padding: const EdgeInsets.all(8),
    child: Image.asset("images/noir.jpg", height: 60, width: 50, fit: BoxFit.cover,),
    ),
    ),
    ),

    GestureDetector(
    onTap: (){
    bleu=false;
    blanc=false;
    noir=false;
    or=true;
    setState(() {
    });
    },

    child: Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(10),
    child: Container(
    decoration: BoxDecoration(color: or?Colors.deepOrangeAccent: Colors.white, borderRadius: BorderRadius.circular(5)),
    padding: const EdgeInsets.all(8),
    child: Image.asset("images/or.jpg", height: 60, width: 50, fit: BoxFit.cover,),
    ),
    ),
    )
    ],);

  }
}


