// ignore_for_file: file_names


import 'package:dicegame/ObjetMetier/Joueur.dart';
import 'package:dicegame/patronDesign/Observable.dart';
import 'package:dicegame/patronDesign/Observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerView extends StatefulWidget implements Observer {
  late _PlayerViewState stateObject;
  @override
  // ignore: no_logic_in_create_state
  _PlayerViewState createState() {
    stateObject = _PlayerViewState();
    return stateObject;
  }

  @override
  void update(Observable o) {
    Joueur joueur = o as Joueur;
    stateObject.setState(() {
      stateObject..compt=joueur.compteur
          ..score=joueur.score
          ..nom =joueur.nom;
    });

  }
}

class _PlayerViewState extends State<PlayerView> {
   String nom="A";
   int score=0;
   int compt=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange)
          ),
          child: Text("Nom: "+nom),
        ),
        const SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange)
          ),
          child: Text("Score: "+score.toString()),
        ),
        const SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange)
          ),
          child: Text("Compteur: "+compt.toString()),
        ),
      ],
    );
  }
}
