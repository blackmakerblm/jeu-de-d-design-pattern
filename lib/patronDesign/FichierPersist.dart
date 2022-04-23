
import 'package:dicegame/ObjetMetier/HighScore.dart';
import 'package:dicegame/patronDesign/HIghScoreFICHIER.dart';

import 'PersistAbstrait.dart';

class FichierPersist extends PersistAbstrait {

@override
  HighScore fabriquer() {
		return HIghScoreFICHIER();
	}

}