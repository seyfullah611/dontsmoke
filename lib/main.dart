import 'package:dontsmokenot/loginPage.dart' ;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'anasayfa.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<bool>(

        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(); // You can show a loading indicator here.
          } else if (snapshot.data == true) {
            return Anasayfa();
          } else {
            return const LoginPage();
          }
        }, future: null,
      ),
    );
  }
}