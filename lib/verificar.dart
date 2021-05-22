import 'package:flutter/material.dart';

import 'main.dart';

class Verificar extends StatefulWidget {
  @override
  _VerificarState createState() => _VerificarState();
}

class _VerificarState extends State<Verificar> {
  @override
  Widget build(BuildContext context) {
    void acerto(){
      AdivNumb.texto = "Você acertou!";
    }
    void erro(){
      AdivNumb.texto = "Você errou!";
      
    }
    if(AdivNumb.number == AdivNumb.random){
        acerto();
      }
      if(AdivNumb.number != 0){
        if(AdivNumb.number != AdivNumb.random){
          erro();
        }
      }
    return Column(
      children: [
        
      ],
    );
  }
}