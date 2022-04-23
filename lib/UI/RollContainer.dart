// ignore_for_file: file_names
import 'package:dicegame/ObjetMetier/Entree.dart';
import 'package:dicegame/ObjetMetier/Jeu.dart';
import 'package:dicegame/ObjetMetier/Joueur.dart';
import 'package:dicegame/UI/Accueil.dart';
import 'package:dicegame/UI/DieView.dart';
import 'package:dicegame/UI/PlayerView.dart';
import 'package:dicegame/controllers/controller_instance.dart';
import 'package:dicegame/patronDesign/MySQLPersist.dart';
import 'package:dicegame/utilitaires/GenerateurAleatoire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RollContainer extends StatefulWidget {
  Joueur joueur;
  RollContainer(this.joueur);
  @override
  _RollContainerState createState() => _RollContainerState();
}

class _RollContainerState extends State<RollContainer> {
  late PlayerView playerView;
  late DieView dieView1;
  late DieView dieView2;
  late Jeu jeu;
  late GenerateurAleatoire generateurAleatoire;
  //late MySQLPersist persiteurSql ;

  @override
  void initState() {
    print("hola");
      playerView = PlayerView();
      dieView1 = DieView();
      dieView2 = DieView();
      //persiteurSql = MySQLPersist();
      //persiteurSql.fabriquer();
      jeu = Jeu.getInstance()!;
      generateurAleatoire = GenerateurAleatoire.getInstance()!;
      jeu.de1.setValeur(generateurAleatoire.getValeur(7)!);
      jeu.de2.setValeur(generateurAleatoire.getValeur(7)!);
      jeu.de1.addObserver(dieView1);
      jeu.de2.addObserver(dieView2);
      widget.joueur.addObserver(playerView);




  }

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Center(
        child: Container(
          width: 650,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(width: 5,color: Colors.deepOrange),
            borderRadius: BorderRadius.circular(5)
          ),
          padding: EdgeInsets.all(35),
          child: Column(
            children: [
              playerView,
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("De 1: "),
                  dieView1,
                  const SizedBox(width: 15,),
                  const Text("De 2: "),
                  dieView2
                ],
              ),
              const SizedBox(height: 20,),
              Center(
                child: widget.joueur.compteur<=9?Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.black)
                  ),
                  child: TextButton(onPressed: (){
                    jeu.de1.setValeur(generateurAleatoire.getValeur(7)!);
                    jeu.de2.setValeur(generateurAleatoire.getValeur(7)!);
                    setState(() {
                      widget.joueur.compteur++;
                      if(widget.joueur.compteur==10){
                        print("yes");
                        liste.liste.add(Entree(widget.joueur.nom, widget.joueur.score));
                      }
                    });
                    if(jeu.de2.valeur + jeu.de1.valeur ==7)
                      widget.joueur.score+=10;


                  }, child: const Text("Lancer")),
                ):Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.black)
                  ),
                  child: TextButton(onPressed: (){
                    Navigator.pop(context);


                  }, child: const Text("Ok")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


/*
* List<DieView> dieviews;
	PlayerView playerview;

 void lancer() {

	}

void annuler() {

	}*/