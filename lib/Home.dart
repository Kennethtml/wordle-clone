import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_clone/GuessList.dart';
import 'package:wordle_clone/Keypad.dart';
import 'package:wordle_clone/providers/data_provider.dart';
import 'guess_data.dart';

class Home extends ConsumerStatefulWidget{

  const Home({super.key});
  @override
  ConsumerState<Home> createState() {
    return _HomeState();
  }

}
class _HomeState extends ConsumerState<Home>{


      


//FUNCTION TO ADD LETTERS TO THE GUESS


//FUNCTION TO CLEAR LETTERES FROMTHE GUESSES
  void clear() {
  // for (var guess in guessContent) {
  //   if (!guess.isChecked) {
  //     for (var dataItem in guess.data) {
  //       if (dataItem['value'] == "") {
  //         int currentIndex = guess.data.indexOf(dataItem);
  //         int previousIndex = currentIndex - 1;

  //         if (previousIndex >= 0) {
  //           setState(() {
  //             guess.data[previousIndex]['value'] = "";
  //           });
  //         }

  //         return;
  //       }
  //     }
  //   }
  // }
}
void submit(){}

   
@override
  Widget build(BuildContext context){
    print(ref.watch(dataProvider)[0].data[0]["value"]);
    return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              GuessList(guessCollections: ref.read(dataProvider),),
              Keypad(backspace: clear, onEnter: submit)
            ],
           );
  }

}