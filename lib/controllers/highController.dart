import 'package:dicegame/ObjetMetier/Entree.dart';
import 'package:get/get.dart';

class highController extends GetxController {
  var liste = <Entree>[
    Entree("Amadou", 50),
  ].obs;
  void ad(Entree e){
    liste.add(e);
  }
}