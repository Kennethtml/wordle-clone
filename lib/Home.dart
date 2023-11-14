import 'package:flutter/material.dart';
import 'package:wordle_clone/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> firstRow = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P'];
  List<String> secondRow = ['A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L'];
  List<String> thirdRow = [
    
    'Z',
    'X',
    'C',
    'V',
    'B',
    'N',
    'M',
   
  ];

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
                      child:Keypad(text: e)
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
                      child:Keypad(text: e)
                    ),
                  ],
                )),
          ],
        ),
         const SizedBox(height: 5,),

         //Buttom row of the keyboard
        Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [ SizedBox(height: 60,width:50,child: TextButton(style:  ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(130, 131, 133, 1)),
                          foregroundColor: MaterialStateProperty.all(
                              Colors.white),
                        ),onPressed: (){}, child: Text('Enter')),),...thirdRow.map((e) => Row(
                  children: [
                   
                    const SizedBox(
                      width: 5, // Add a gap of 10 pixels between buttons
                    ),
                    SizedBox(
                      width: 35,
                      height: 60,
                      child:Keypad(text: e)
                    ),
                  ],
                )), SizedBox(width: 5,) ,Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(130, 131, 133, 1),
                    borderRadius:  BorderRadius.all(Radius.circular(5))
                  ),
                  child: IconButton(onPressed: ()=>{}, icon: const Icon(Icons.backspace, color: Colors.white,)),
                )])
      ],
    );
  }
}
