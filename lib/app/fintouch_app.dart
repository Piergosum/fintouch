import 'package:fintouch/app/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'rotas.dart';


class FintouchApp extends StatelessWidget {
  const FintouchApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return const MaterialApp(
        //initialRoute: 'home',
        //routes: Rotas.rotas,
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
      );

  }

}













