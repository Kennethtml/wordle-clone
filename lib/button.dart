import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wordle_clone/providers/data_provider.dart';

class TextKey extends ConsumerWidget {

  const TextKey({super.key , required this.text});

  final String text;


  @override

  Widget build(BuildContext context,ref){
   
    return  TextButton(
                        onPressed:()=> ref.read(dataProvider.notifier).addText(text),
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

