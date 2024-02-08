import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_clone/GuessList.dart';
import 'package:wordle_clone/Home.dart';
import 'package:wordle_clone/Keypad.dart';

void main() {
  //  debugPaintSizeEnabled = true;
  runApp(
    
   const ProviderScope(
      child:  MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromRGBO(18, 18, 18, 1), 
           body:Home()
         
        ),
      ),
    )
   
  );
}