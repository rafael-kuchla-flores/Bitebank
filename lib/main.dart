import 'package:bitebank/Palette.dart';
import 'package:bitebank/screens/dashboard.dart';
import 'package:bitebank/screens/lista_contatos.dart';
import 'package:bitebank/screens/novo_contato.dart';
import 'package:flutter/material.dart';

void main() => runApp(Bytebank());

class Bytebank extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Palette.darkGreen,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.green[900],
            textTheme: ButtonTextTheme.primary,
          ), colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Palette.darkGreen
        ).copyWith(secondary: Colors.green[900])
      ),
      home: NovoContato(),
    );
  }
}



