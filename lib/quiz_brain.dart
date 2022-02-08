import 'package:guess_the_artikel/final_page.dart';

import 'question.dart';
import 'dart:math';

class QuizBrain{
    int? totalLenght;
    int? questionNo;
    int bilinenler=0;
    List<Question> questionBank=[
      Question(artikel: "die",wort: "Tasche"),
      Question(artikel: "die",wort: "Brille"),

      Question(artikel: "die",wort: "Musik"),
      Question(artikel: "die",wort: "Texte"),
      Question(artikel: "die",wort: "Biografie"),

      Question(artikel: "die",wort: "Lotto-Zahlen"),
      Question(artikel: "die",wort: "Arbeitsanweisung"),
      Question(artikel: "die",wort: "Artikel"),
      Question(artikel: "die",wort: "Lampe"),
      Question(artikel: "die",wort: "Katze"),
      Question(artikel: "die",wort: "Pause"),
      Question(artikel: "das",wort: "Radio"),
      Question(artikel: "das",wort: "Buch"),
      Question(artikel: "das",wort: "Magazin"),
      Question(artikel: "das",wort: "Wörterbuch"),
      Question(artikel: "das",wort: "Handy"),
      Question(artikel: "das",wort: "Lernplakat"),
      Question(artikel: "das",wort: "Papier"),
      Question(artikel: "das",wort: "Whiteboard"),
      Question(artikel: "das",wort: "Brötchen"),
      Question(artikel: "das",wort: "Mäppchen"),
      Question(artikel: "der",wort:"Tisch"),
      Question(artikel: "der",wort:"Füller"),
      Question(artikel: "der",wort:"Bleistift"),
      Question(artikel: "der",wort:"Radiergummi"),
      Question(artikel: "der",wort:"Kuli"),
      Question(artikel: "der",wort:"Becher"),
      Question(artikel: "der",wort:"Stift"),
      Question(artikel: "der",wort:"Stuhl"),
      Question(artikel: "der",wort:"Computer"),
      Question(artikel: "der",wort:"Pilot"),
      Question(artikel: "der",wort:"Mann"),
      Question(artikel: "der",wort:"Lehrer"),
      Question(artikel: "der",wort:"Sohn"),
      Question(artikel: "der",wort:"Löwe"),
      Question(artikel: "der",wort:"Herr"),
      Question(artikel: "der",wort:"Bruder"),








    ];


    int dogruSayisi=0;
    int yanlisSayisi=0;

    Question getQuestion(){

      int questionNumber = Random().nextInt(questionBank.length - 1);
      questionNo = questionNumber;




      return questionBank[questionNumber];



    }

    Question? soru;


    bool isCorrectAnswer(String? userAnswer){
      if(userAnswer==questionBank[questionNo!].answer){
        return true;
      }
      return false;
    }
    void dogruBilindi(){


          questionBank.remove(questionBank[questionNo!]);
          bilinenler+=1;
          dogruSayisi++;



    }
    void yanlisBilindi(){

      yanlisSayisi++;


    }
    int dogruSayisiFunc(){
      return dogruSayisi;
    }
    int yanlisSayisiFunc(){
      return yanlisSayisi;
    }
    QuizBrain(){
      totalLenght=questionBank.length;
      soru=getQuestion();
    }
}