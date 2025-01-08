import 'package:flutter/material.dart';

class AppWidget {
    static TextStyle boldTextStyle(){
      return const TextStyle(
          color: Colors.black87,
          fontSize: 15.0,
          fontWeight: FontWeight.bold ,
          fontFamily: 'Poppins');
    }

    static TextStyle headTextStyle(){
      return const TextStyle(
          color: Colors.black87,
          fontSize: 25.0,
          fontWeight: FontWeight.bold ,
          fontFamily: 'Poppins');
    }

    static TextStyle lightTextStyle(){
      return const TextStyle(
          color: Colors.black87,
          fontSize: 15.0,

          fontFamily: 'Poppins');
    }

    static TextStyle semiboldTextStyle(){
      return const TextStyle(
          color: Colors.black87,
          fontSize: 18.0,
          fontWeight: FontWeight.w500 ,
          fontFamily: 'Poppins');
    }

}