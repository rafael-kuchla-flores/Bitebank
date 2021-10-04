import 'package:bitebank/database/app_database.dart';
import 'package:bitebank/models/contato.dart';
import 'package:bitebank/palette.dart';
import 'package:bitebank/screens/dashboard.dart';
import 'package:bitebank/screens/novo_contato.dart';
import 'package:bitebank/screens/lista_contatos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ByteBankApp());
//  salvar(Contato(0,'Joaquim',1009)).then((id){
//    buscar().then((contatos) => debugPrint(contatos.toString()));
//  });
}

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Palette.darkGreen,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.green[900],
            textTheme: ButtonTextTheme.primary,
          ), colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Palette.darkGreen
      ).copyWith(secondary: Colors.green[900])
      ),
      home: Dashboard(),
    );
  }
}







