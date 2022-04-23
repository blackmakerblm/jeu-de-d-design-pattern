// ignore: file_names
// ignore_for_file: file_names, camel_case_types
import 'package:dicegame/patronDesign/Observable.dart';

class De extends Observable {

	int _valeur;

  int get valeur => _valeur;

  setValeur(int value) {
    _valeur = value;
    this.notifyObservers();
  }

  De(this._valeur);

	int getValeur() {
		return valeur;
	}

}