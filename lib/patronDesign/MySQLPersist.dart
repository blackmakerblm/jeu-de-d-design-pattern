// ignore_for_file: file_names

import 'package:dicegame/ObjetMetier/HighScore.dart';
import 'package:dicegame/patronDesign/HighScoreMSQL.dart';
import 'package:mysql1/mysql1.dart';

import 'PersistAbstrait.dart';

class MySQLPersist extends PersistAbstrait {

@override
  HighScore fabriquer() {
			return HighScoreMSQL();
	}
static Future<void> test() async {
	HighScoreMSQL tester = HighScoreMSQL();
	var conn= await MySqlConnection.connect(tester.settings);
	await conn.query('insert into HighScore (nom, score) values (?,? )', ["Aaron",13]);


}
}