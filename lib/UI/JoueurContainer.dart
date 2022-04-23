// ignore_for_file: file_names

import 'package:dicegame/ObjetMetier/Joueur.dart';
import 'package:dicegame/UI/RollContainer.dart';
import 'package:flutter/material.dart';

class JoueurContainer extends StatelessWidget  {



 void commencer() {

	}

 void annuler() {

	}
	final TextEditingController e = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Container(
				 height: 100,
				 width: 500,
				 child: Center(
					 child: Column(
						 children: [
							 Row(
								 mainAxisAlignment: MainAxisAlignment.center,
								 children:  [
									 const Text("Nom joueur: "),
									 const SizedBox(width: 5,),
									 Container(
										 width: 400,
										 height: 25,
										 decoration:  BoxDecoration(
												 border: Border.all(color: Colors.black)
										 ),
										 child:  TextField(
											 controller: e,
											 style: const TextStyle(
													 fontFamily: 'WorkSansSemiBold',
													 fontSize: 16.0,
													 color: Colors.black),
											 decoration:const InputDecoration(
													 border: InputBorder.none,

													 hintText: 'Entrer Nom du joueur',
													 hintStyle: TextStyle(
															 fontFamily: 'WorkSansSemiBold', fontSize: 17.0)
											 ),

										 ),
									 ),

								 ],
							 ),
							 const SizedBox(height: 25,),
							 Row(
								 mainAxisAlignment: MainAxisAlignment.center,
								 children: [
									 Container(
										 decoration: BoxDecoration(
												 borderRadius: BorderRadius.circular(7),
												 border: Border.all(color: Colors.green)
										 ),
										 child: TextButton(onPressed: (){
										 	Navigator.pop(context);
											 Navigator.push(context, MaterialPageRoute(builder: (context) =>  RollContainer(Joueur(e.text))));
										 }, child: Text("Commencer")),
									 ),
									 const SizedBox(width: 5,),
									 Container(
										 decoration: BoxDecoration(
												 borderRadius: BorderRadius.circular(7),
												 border: Border.all(color: Colors.red)
										 ),
										 child: TextButton(onPressed: (){
											 Navigator.pop(context);
										 }, child: Text("Annuler")),
									 ),
								 ],
							 )

						 ],
					 ),
				 ),
   );
  }


}