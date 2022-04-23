
import 'package:dicegame/UI/Accueil.dart';
import 'package:dicegame/UI/DieView.dart';
import 'package:dicegame/UI/JoueurContainer.dart';
import 'package:dicegame/UI/SecondRoute.dart';
import 'package:dicegame/controllers/highController.dart';
import 'package:dicegame/patronDesign/MySQLPersist.dart';
import 'package:dicegame/patronDesign/Observer.dart';
import 'package:dicegame/patronDesign/PersistAbstrait.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ObjetMetier/De.dart';
import 'dart:io';

void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
   // PersistAbstrait persiteurSql= MySQLPersist() ;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final highController liste = Get.put(highController());
    return GetMaterialApp(
      title: 'JEU DE DÉ',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Jeu de dé'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Accueil(widget.title);
  }
}
/*Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              d1.getValeur().toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 25,),
            const Text(
              'DieVIEW:',
            ),
            d
          ],
        ),*/