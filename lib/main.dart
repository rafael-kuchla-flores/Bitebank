import 'package:bitebank/http/webcliente.dart';
import 'package:bitebank/palette.dart';
import 'package:bitebank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ByteBankApp());
  buscarWeb();
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







