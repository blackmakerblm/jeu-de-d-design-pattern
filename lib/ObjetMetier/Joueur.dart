// ignore_for_file: file_names

import 'package:dicegame/patronDesign/Observable.dart';

import 'Jeu.dart';

class Joueur extends Observable {

	String _nom;
	late int _score ;
	late int _compteur =0;

	int get compteur => _compteur;

	set compteur(int value) {
		_compteur = value;
		this.notifyObservers();
	}

	String get nom => _nom;

	set nom(String value) {
		_nom = value;
		this.notifyObservers();
	}

	Joueur(this._nom){
		this._compteur=0;
		this._score=0;
	}


	void jouer(Jeu jeu) {

	}

	int get score => _score;

	set score(int value) {
		_score = value;
		this.notifyObservers();
	}


}