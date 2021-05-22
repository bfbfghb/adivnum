import 'package:flutter/material.dart';
import 'dart:math';
import 'buttons/ButtonPrincipal.dart';

main(){
  runApp(AdivNumb());
}

class AdivNumb extends StatefulWidget {
    static var rng = new Random();
    static int random;
    static int ordem;
    static int number = 0;
    static int number1;
    static int number2;
    static int number3;
    static int number4;
    static String texto = "";

  @override
  _AdivNumbState createState() => _AdivNumbState();
}

class _AdivNumbState extends State<AdivNumb> {

  String text = "Escolha um numero";
  @override
  Widget build(BuildContext context) {
      AdivNumb.ordem = AdivNumb.rng.nextInt(4);
    if(AdivNumb.ordem == 1) {
    AdivNumb.random = AdivNumb.rng.nextInt(100);
    AdivNumb.number1 = AdivNumb.random;
    AdivNumb.number2  = AdivNumb.rng.nextInt(100);
    AdivNumb.number3  = AdivNumb.rng.nextInt(100);
    AdivNumb.number4  = AdivNumb.rng.nextInt(100);
  }
  if(AdivNumb.ordem == 2) {
    AdivNumb.random = AdivNumb.rng.nextInt(100);
    AdivNumb.number2 = AdivNumb.random;
    AdivNumb.number1  = AdivNumb.rng.nextInt(100);
    AdivNumb.number3  = AdivNumb.rng.nextInt(100);
    AdivNumb.number4  = AdivNumb.rng.nextInt(100);
  }
  if(AdivNumb.ordem == 3) {
    AdivNumb.random = AdivNumb.rng.nextInt(100);
    AdivNumb.number3 = AdivNumb.random;
    AdivNumb.number1  = AdivNumb.rng.nextInt(100);
    AdivNumb.number2  = AdivNumb.rng.nextInt(100);
    AdivNumb.number4  = AdivNumb.rng.nextInt(100);
  }
  if(AdivNumb.ordem == 4) {
    AdivNumb.random = AdivNumb.rng.nextInt(100);
    AdivNumb.number4  = AdivNumb.random;
    AdivNumb.number1  = AdivNumb.rng.nextInt(100);
    AdivNumb.number3  = AdivNumb.rng.nextInt(100);
    AdivNumb.number2  = AdivNumb.rng.nextInt(100);
  }
    void verificar(){
      if(AdivNumb.number == AdivNumb.random){
        AdivNumb.texto = "Você acertou!";
        setState(() {
        text = AdivNumb.texto;
        });
      }
      if(AdivNumb.number != AdivNumb.random){
          AdivNumb.texto = "Você errou!";
        setState(() {
        text = AdivNumb.texto;
        });
      }
    }
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Adivinhe o número"),
            
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Principal_Button(textbutton: "${AdivNumb.number1}",onPressed: (){AdivNumb.number = AdivNumb.number1; verificar();},),
              Principal_Button(textbutton: "${AdivNumb.number2}",onPressed: (){AdivNumb.number = AdivNumb.number2; verificar();},),
              Principal_Button(textbutton: "${AdivNumb.number3}",onPressed: (){AdivNumb.number = AdivNumb.number3; verificar();},),
              Principal_Button(textbutton: "${AdivNumb.number4}",onPressed: (){AdivNumb.number = AdivNumb.number4; verificar();},),
              ]),
              Text(text),
          ],
        ),
      ),
    );
  }
}