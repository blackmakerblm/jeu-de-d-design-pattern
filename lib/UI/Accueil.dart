// ignore_for_file: file_names
import 'package:dicegame/ObjetMetier/De.dart';
import 'package:dicegame/UI/HighScoreContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DieView.dart';
import 'JoueurContainer.dart';

class Accueil extends StatefulWidget {
  Accueil(this.title);
  final String title;
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  late De d1;
  late DieView d;
  late int v;

  @override
  void initState() {
    d = DieView();
    d1 = De(0);
    d1.addObserver(d);
  }



  void _incrementCounter() {

    setState(() {
      v = d1.getValeur();
      d1.setValeur(v+1);
    });
  }
  int a =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(

          child: a==0?Container(
            height: 50,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.red)
                  ),
                  child: TextButton(onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text the user has entered by using the
                          // TextEditingController.
                          content: JoueurContainer(),
                        );
                      },
                    );
                  }, child: Text("Jouer"),),
                ),
                SizedBox(width: 5,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.red)
                  ),
                  child: TextButton(onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text the user has entered by using the
                          // TextEditingController.
                          content: HighScoreContainer(),
                        );
                      },
                    );
                  }, child: Text("HighScore")),
                ),
                SizedBox(width: 5,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.red)
                  ),
                  child: TextButton(onPressed: (){

                  }, child: Text("Quitter")),
                )
              ],
            ),
          ):JoueurContainer()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
