// ignore_for_file: file_names
// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerInFo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text("Nom joueur: "),
                    SizedBox(width: 5,),
                    Container(
                      width: 400,
                      height: 25,
                      decoration:  BoxDecoration(
                          border: Border.all(color: Colors.black)
                      ),
                      child: const TextField(
                        style: TextStyle(
                            fontFamily: 'WorkSansSemiBold',
                            fontSize: 16.0,
                            color: Colors.black),
                        decoration: InputDecoration(
                            border: InputBorder.none,

                            hintText: 'Entrer Nom du joueur',
                            hintStyle: TextStyle(
                                fontFamily: 'WorkSansSemiBold', fontSize: 17.0)
                        ),

                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.green)
                      ),
                      child: TextButton(onPressed: (){

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
        ),
      ),
    );
  }
}
