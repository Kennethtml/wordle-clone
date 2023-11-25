import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextKey extends StatelessWidget {

  const TextKey({super.key , required this.text, required this.textAction});

  final String text;
 final void Function(String input) textAction;

  @override

  Widget build(BuildContext context){
    return  TextButton(
                        onPressed:()=> textAction(text),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(130, 131, 133, 1)),
                          foregroundColor: MaterialStateProperty.all(
                              Colors.white),
                        ),
                        child: Text(
                          text,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
  }
}

