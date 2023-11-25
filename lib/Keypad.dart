import 'package:flutter/material.dart';
import 'package:wordle_clone/button.dart';

class Keypad extends StatefulWidget {
   Keypad({super.key,required this.enterText, required this.backspace, required this.onEnter});


void Function(String letter)enterText;
void Function() backspace;
void Function() onEnter;
  @override
  State<StatefulWidget> createState() {
    return _KeypadState();
  }
}

class _KeypadState extends State<Keypad> {
final List<String> firstRow = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P'];
  final List<String> secondRow = ['A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L'];
  final List<String> thirdRow = ['Z', 'X', 'C', 'V', 'B', 'N', 'M'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [...firstRow.map((e) => Row(
                  children: [
                    const SizedBox(
                      width: 5, // Add a gap of 5 pixels between buttons
                    ),
                    SizedBox(
                      width: 35,
                      height:60,
                      child:TextKey(text: e, textAction: widget.enterText,)
                    ),
                  ],
                )),],
        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...secondRow.map((e) => Row(
                  children: [
                    const SizedBox(
                      width: 5, // Add a gap of 10 pixels between buttons
                    ),
                    SizedBox(
                      width: 35,
                      height: 60,
                      child:TextKey(text: e, textAction: widget.enterText)
                    ),
                  ],
                )),
          ],
        ),
         const SizedBox(height: 5,),

         //Buttom row of the keyboard
        Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [ SizedBox(height: 60,width:60,child: TextButton(style:  ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(130, 131, 133, 1)),
                          foregroundColor: MaterialStateProperty.all(
                              Colors.white),
                        ),onPressed: widget.onEnter, child: const Text('ENTER')),),...thirdRow.map((e) => Row(
                  children: [
                   
                    const SizedBox(
                      width: 5, // Add a gap of 10 pixels between buttons
                    ),
                    SizedBox(
                      width: 35,
                      height: 60,
                      child:TextKey(text: e, textAction: widget.enterText)
                    ),
                  ],
                )), SizedBox(width: 5,) ,Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(130, 131, 133, 1),
                    borderRadius:  BorderRadius.all(Radius.circular(5))
                  ),
                  child: IconButton(onPressed: widget.backspace, icon: const Icon(Icons.backspace, color: Colors.white,)),
                )])
      ],
    );
  }
}
