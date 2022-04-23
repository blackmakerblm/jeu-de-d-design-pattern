// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(
        child: Container(
          height: 500,

          color: Colors.yellow,
          child: Center(
            child: Column(
              children: [
                Text("kfmqjsdf"),
                const SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.red)
                  ),
                  child: TextButton(onPressed: (){

                  }, child: Text("HighScore")),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}