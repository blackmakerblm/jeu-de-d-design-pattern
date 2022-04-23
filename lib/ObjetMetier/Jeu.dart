// ignore_for_file: file_names


import 'package:dicegame/ObjetMetier/HighScore.dart';
import 'package:dicegame/patronDesign/MySQLPersist.dart';
import 'package:dicegame/patronDesign/Observable.dart';
import 'package:dicegame/patronDesign/PersistAbstrait.dart';

import 'De.dart';

class Jeu extends Observable {

	static Jeu ? _instance = null;
	late De _de1;
	late De _de2;
	late MySQLPersist _persistAbstrait;
	late HighScoreMSQL _highScore;

	De get de1 => _de1;

	set de1(De value) {
		_de1 = value;
	}

	Jeu.privateConstructeur(){
		_de1 = De(1);
		_de2 = De(1);
	//	_persistAbstrait=MySQLPersist();
		//_persistAbstrait.fabriquer();

		//_highScore=HighScoreMSQL();

	}

	 void commencer() {

	}

	 static Jeu? getInstance() {
		_instance??=Jeu.privateConstructeur();
		return _instance;
	}

	De get de2 => _de2;

	set de2(De value) {
		_de2 = value;
	}

}