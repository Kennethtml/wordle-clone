import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:wordle_clone/guess_data.dart';

class DataNotifier extends StateNotifier<List<GuessData>> {
  DataNotifier()
      : super([
          GuessData(id: 0),
          GuessData(id: 1),
          GuessData(id: 2),
          GuessData(id: 3),
          GuessData(id: 4)
        ]);

  void addText(String letter) {
    final newState=state;
    for (int i = 0; i < newState.length; i++) {
      for(var guessLetter in newState[i].data){
        if (guessLetter['value']==""){
          guessLetter['value']=letter;
           state=newState;
          return;
        }

      }

    }
   
  }
  
}

final dataProvider = StateNotifierProvider<DataNotifier, List<GuessData>>(
    (ref) => DataNotifier());
