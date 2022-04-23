// ignore_for_file: file_names
import 'package:dicegame/patronDesign/Observable.dart';
import 'package:mysql1/mysql1.dart';

import 'Entree.dart';


abstract class HighScore extends Observable{

	 HighScore? instance = null;
	 late List<Entree> entrees;
	HighScore() {

	}


	void ajouter(Entree entree){
		entrees.add(entree);
		this.notifyObservers();
	}

	 List<Entree> getElements(){
		return entrees;
	 }
	HighScore? getInstance(){
		instance==null?print("Aucune methode de persistence choisie"):(){
			return instance;
		};
	}


	void charger();


	void sauvegarder();
}

class HighScoreMSQL extends HighScore {
	var conn = null;
	var settings;
	 HighScore? instance;
	HighScoreMSQL(){
		print("okkkkkkk");
		settings =  ConnectionSettings(
				host: 'localhost',
				port: 3306,
				user: 'blm',
				password: 'worktosuccess21',
				db: 'dicegame'
		);
		super.instance=this;
		charger();


		//conn= await MySqlConnection.connect(settings);
	}

	@override
	void charger()async {
		conn= await MySqlConnection.connect(settings);
		var results = await conn.query('SELECT * FROM HighScore');
		for (var row in results) {
			entrees.add(Entree(row[0], row[1]));
			notifyObservers();
		}
	}


	@override
	void sauvegarder() {
		super.getElements().forEach((element) async {
			await conn.query('insert into HighScore (nom, score) values (?, )', [element.nom,element.score]);
		});
	}




}