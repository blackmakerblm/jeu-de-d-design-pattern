// ignore_for_file: file_names

import 'package:dicegame/controllers/controller_instance.dart';
import 'package:dicegame/patronDesign/Observable.dart';
import 'package:dicegame/patronDesign/Observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HighScoreContainer extends StatelessWidget implements Observer {
  const HighScoreContainer({Key? key}) : super(key: key);


	 void fermer() {

	}

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Obx(
        (){
          return Column(
              children:
              liste.liste.value.map((element) => Text("Nom: "+element.nom+" Score: "+element.score.toString())).toList()

          );
        }
    ),
		);
  }

  @override
  void update(Observable o) {

  }

}