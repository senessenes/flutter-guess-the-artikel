import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'final_page.dart';
QuizBrain quizBrain = QuizBrain();
void main() {

  runApp(page());
}
class page extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.

          // When navigating to the "/second" route, build the SecondScreen widget.
          '/home':(context)=>new page(),
          '/second': (context) => new finalPage(
            dogru: quizBrain.dogruSayisi,
            yanlis: quizBrain.yanlisSayisi,
          ),
        },

      theme: ThemeData.dark(),
      home: questionpage()


    );
  }
}

class questionpage extends StatefulWidget {
  const questionpage({Key? key}) : super(key: key);

  @override
  _questionpageState createState() => _questionpageState();
}

class _questionpageState extends State<questionpage> {
  int? dogruSayisi=quizBrain.dogruSayisi;
  int? yanlisSayisi=quizBrain.yanlisSayisi;
  String? soru=quizBrain.getQuestion().title;



  void updateUI(String? userAnswer){

    if(quizBrain.bilinenler!+2>=quizBrain.totalLenght!){
      if(quizBrain.isCorrectAnswer(userAnswer)==true){

        quizBrain.dogruBilindi();
        setState(() {
          quizBrain.dogruSayisi--;
        });

        print(quizBrain.dogruSayisi);
      }
      else{

        quizBrain.yanlisSayisi++;
        quizBrain.yanlisBilindi();
      }
        Navigator.pushNamed(context, '/second');




    }


    if(quizBrain.isCorrectAnswer(userAnswer)==true) {
        print("çalıştı");
        quizBrain.dogruBilindi();
        print(quizBrain.dogruSayisi);
        setState(() {
          soru=quizBrain.getQuestion().title;





        });
        setState(() {
          dogruSayisi = quizBrain.dogruSayisi;
        });



      }

      else if(quizBrain.isCorrectAnswer(userAnswer)==false){
      setState(() {
          soru=quizBrain.getQuestion().title;


        });
      setState(() {
        quizBrain.yanlisBilindi();

      });
      setState(() {
        yanlisSayisi=quizBrain.yanlisSayisi;
      });






      }




  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Guess The Artikel"),),
      body: Center(
            child: Column(
              children: [
                SizedBox(height:30),
                Text(soru!,
                  style: TextStyle(
                      fontSize: 40
                  ),


                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Column(
                    children: [
                      Icon(Icons.check,color: Colors.green,),
                      SizedBox(height: 5),
                      Icon(Icons.close,color: Colors.red,),
                    ],
                  ),
                    SizedBox(width: 5,),

                    Column(children: [Text(":$dogruSayisi",style: TextStyle(fontSize: 20),),Text(":$yanlisSayisi",style: TextStyle(fontSize: 20),)],)

                  ],

                ),
                SizedBox(height:50),
                SizedBox(
                  width: 300,
                  height:100,
                  child:RaisedButton(

                    onPressed: () {
                      updateUI("der");
                    },
                    color: Colors.cyanAccent[500],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text("der",style: TextStyle(fontSize: 40),),
                  ),),
                SizedBox(height: 40,),
                SizedBox(
                  width: 300,
                  height:100,
                  child:RaisedButton(

                    onPressed: () {
                      updateUI("die");
                    },
                    color: Colors.cyanAccent[500],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text("die",style: TextStyle(fontSize: 40),),
                  ),),
                SizedBox(height: 40,),
                SizedBox(
                  width: 300,
                  height:100,
                  child:RaisedButton(

                    onPressed: () {
                      updateUI("das");
                    },
                    color: Colors.cyanAccent[500],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text("das",style: TextStyle(fontSize: 40),),
                  ),),

              ],

            )
      ),
    );




  }
}