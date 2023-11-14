import 'package:flutter/material.dart';
import 'package:wordle_clone/Home.dart';

void main() {
  //  debugPaintSizeEnabled = true;
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
         body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              SizedBox(height: 500,),
              HomeScreen()
            ],
           ),
       
      ),
    )
   
  );
}