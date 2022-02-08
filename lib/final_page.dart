import "package:flutter/material.dart";
import 'package:guess_the_artikel/quiz_brain.dart';
import 'main.dart';
QuizBrain quizBrain =QuizBrain();
class finalPage extends StatelessWidget {

  int? dogruSayisi;
  int? yanlisSayisi;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title:Text("Guess The Artikel")),
        body: Column(
          children: [
            SizedBox(height: 40,),
            Text('Tebrikler.Sorduğumuz tüm kelimelerin ',style: TextStyle(fontSize: 45),),
            Text('doğru artikellerini öğrendiniz',style: TextStyle(fontSize: 45),),
            SizedBox(height: 70,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Doğru sayısı:",style: TextStyle(fontSize: 40,color: Colors.green),),
                    Text("Yanlış sayısı:",style: TextStyle(fontSize: 40,color: Colors.red),)
                  ],
                ),
              ),



                 Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text(":$dogruSayisi",style: TextStyle(fontSize: 40),),Text(":$yanlisSayisi",style: TextStyle(fontSize: 40),)],))







              ],),
          ],
        ),

      ),
    );




  }
  finalPage({int? dogru,int? yanlis}){
    dogruSayisi=dogru;
    yanlisSayisi=yanlis;
  }
}


