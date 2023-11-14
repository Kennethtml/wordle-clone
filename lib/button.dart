import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Keypad extends StatelessWidget {

  const Keypad({super.key , required this.text});

  final String text;

  @override

  Widget build(BuildContext context){
    return  TextButton(
                        onPressed: () {},
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

