import 'package:flutter/material.dart';
import 'package:wordle_clone/guess_data.dart';

class GuessList extends StatelessWidget {
 const GuessList({Key? key, required this.guessCollections}) : super(key: key);

  final List<GuessData> guessCollections;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: guessCollections.map((e) {
          return TableRow(
            children: e.data.map((f) {
              return TableCell(
                child: Container(
                  width: 20,
                  height: 50,
                  
                  decoration: BoxDecoration(
                    color: Color(f["bgColor"] as int),
                    //  color: Color(0xFF608B55)
    
                    border:const Border(
                      right: BorderSide(
                        width: 10.0,
                        color: Colors.black, // Set the right border color
                      ),
                      bottom: BorderSide(
                        width: 10.0,
                        color: Colors.black, // Set the right border color
                      ),
                    ),
                    
                  ),
                  child: Center(
                    child: Text(f['value'].toString(), style:const TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
