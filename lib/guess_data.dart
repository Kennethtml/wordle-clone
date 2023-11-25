

class GuessData{
  GuessData({required this.id}): data= List.generate(5, (index){return{"id":index, "value":"", "bgColor":0xFF797979};});

  final int id;
  List<Map<String, Object>>  data;
  bool isChecked =false;
  String targetWord="arose";

  setBgcolor(){

       String wordInstance=targetWord;
      for(int i=0; i< data.length; i++){
        if(data[i]["value"]==""){
          data[i]["bgColor"]=0xFF797979;
        }
        else if(wordInstance.toUpperCase().contains(data[i]["value"].toString()) && data[i]["value"]!=targetWord[i].toUpperCase()){
          data[i]["bgColor"]=0xFFB19F4B;
         wordInstance= wordInstance.replaceFirst(targetWord[i], "");

        } 
        else if(data[i]["value"]==targetWord[i].toUpperCase()){
             data[i]["bgColor"]=0xFF608B55;
            wordInstance= wordInstance.replaceFirst(targetWord[i], "");
        }

   
      }
          
print(wordInstance);
    
  }


}