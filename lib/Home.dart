import 'package:flutter/widgets.dart';
import 'package:wordle_clone/GuessList.dart';
import 'package:wordle_clone/Keypad.dart';
import 'guess_data.dart';

class Home extends StatefulWidget{

  const Home({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}
class _HomeState extends State<Home>{

  List<GuessData> guessContent =
      List.generate(6, (index) => GuessData(id: index));


//FUNCTION TO ADD LETTERS TO THE GUESS
  void addText(String letter){
    for(int i=0;i<guessContent.length;i++){
      if(guessContent[i].isChecked==false){

        for(int j=0;j<guessContent[i].data.length;j++){
          if(guessContent[i].data[j]["value"]==""){
             setState(() {
      guessContent[i].data[j]["value"]=letter;}
   
      
    );
    return;
      }
          }
        }
      
    }
   
  }

//FUNCTION TO CLEAR LETTERES FROMTHE GUESSES
  void clear() {
  for (var guess in guessContent) {
    if (!guess.isChecked) {
      for (var dataItem in guess.data) {
        if (dataItem['value'] == "") {
          int currentIndex = guess.data.indexOf(dataItem);
          int previousIndex = currentIndex - 1;

          if (previousIndex >= 0) {
            setState(() {
              guess.data[previousIndex]['value'] = "";
            });
          }

          return;
        }
      }
    }
  }
}


//   void clear() {
//   for (int i = 0; i < guessContent.length; i++) {
//     if (!guessContent[i].isChecked) {
//       for (int j = 0; j < guessContent[i].data.length; j++) {
//         if (guessContent[i].data[j]['value'] == "") {
//           int currentIndex = guessContent[i].data.indexOf({"id": j, "value": ""});
//           // Assuming this method is inside a StatefulWidget
//           setState(() {
//             guessContent[i].data[currentIndex]['value'] = "";
//           });
//           return;
//         }
//       }
//     }
//   }
// }

// void clear() {
//   for (int i = 0; i < guessContent.length; i++) {
//     if (!guessContent[i].isChecked) {
//       for (int j = 0; j < guessContent[i].data.length; j++) {
//         if (guessContent[i].data[j]['value'] == "") {
//           int currentIndex = guessContent[i].data.indexOf({"id": j, "value": ""});

//           // Check if the element is found before using the index
//           if (currentIndex != -1) {
//             // Assuming this method is inside a StatefulWidget
//             setState(() {
//               guessContent[i].data[currentIndex]['value'] = "";
//             });
//           }
//           return;
//         }
//       }
//     }
//   }
// }



     void submit (){

//TODO: verify the solution
       for(int i=0;i<guessContent.length;i++){
        if(guessContent[i].isChecked==false){
          guessContent[i].isChecked=true;
       setState(() {
          guessContent[i].setBgcolor();
       });
      //  return;
        }
      //  return;
       
       }

      //TODO: ensure the fields are filled
      

          // TODO: SET BG
      //TODO:once pressed make sure it's impossible to clear the fields
   }
@override
  Widget build(BuildContext context){
    return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              GuessList(guessCollections: guessContent,),
              Keypad(enterText: addText,backspace: clear, onEnter: submit)
            ],
           );
  }

}