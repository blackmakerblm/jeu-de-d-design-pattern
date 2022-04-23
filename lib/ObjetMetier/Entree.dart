
import 'Joueur.dart';

class Entree {

	String nom;
	int score;


	Entree(this.nom, this.score);

	int getScore() {
		return this.score;
	}


	 void setScore(int score) {
		this.score = score;
	}

}