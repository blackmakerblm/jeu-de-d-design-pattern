// ignore: file_names

// ignore_for_file: file_names

 import 'dart:core';
import 'dart:math';

class GenerateurAleatoire  {
  static GenerateurAleatoire ?_instance ;
  late Random random;
  static GenerateurAleatoire? getInstance(){
    _instance ??= GenerateurAleatoire._privateConstruct();
    return _instance;
  }

  GenerateurAleatoire._privateConstruct(){
    random = Random();
  }
  
  int? getValeur(int i){
    int? i=getInstance()?.random.nextInt(7).toInt();
    return i!+1;
  }

 
  
}