// ignore: file_names
// ignore_for_file: file_names


import 'dart:js';

import 'package:dicegame/ObjetMetier/De.dart';
import 'package:dicegame/patronDesign/Observable.dart';
import 'package:dicegame/patronDesign/Observer.dart';
import 'package:flutter/cupertino.dart';


class DieView extends StatefulWidget implements Observer {

 late  _DieViewState stateobject;
  @override
  _DieViewState createState() {
   stateobject = _DieViewState();
   return stateobject;
  }

  @override
  void update(Observable o) {
    De d = o as De;
    if(stateobject.mounted){
      print("d");
      stateobject.activate();
      stateobject.setState(() {
        stateobject.a=d.valeur;
      });
    }
    else{
     //** print("222222");
      stateobject = createState();
      //stateobject.build(context);
    }
  }


}

class _DieViewState extends State<DieView> {

int a=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 15,
      child: Text(a.toString()),
    );
  }
}

