import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gestion_costume/pages/home.dart';
import 'package:gestion_costume/pages/profile.dart';
import 'package:gestion_costume/pages/reservation.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  @override
  State<BottomNav> createState() => _BottomNavState();
}
class _BottomNavState extends State<BottomNav> {
  int currentTabIndex=0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Reservation reservation;
  late Profile profile;

  @override

  void initState() {
     homepage=const Home();
     reservation=const Reservation();
     profile=const Profile();
     pages=[homepage, reservation, profile];
     super.initState();

  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          onTap: (int index){
            setState(() {
            currentTabIndex=index;
            });
          },
          items:  const [
        Icon(Icons.home_outlined, color: Colors.white,),
        Icon(Icons.shopping_bag_outlined, color: Colors.white,),
        Icon(Icons.person_outline, color: Colors.white,),
      ]),
        body: pages[currentTabIndex],
     );
  }
}
