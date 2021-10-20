import 'package:bitebank/screens/lista_contatos.dart';
import 'package:bitebank/screens/lista_transacoes.dart';
import 'package:flutter/material.dart';
import 'package:bitebank/Palette.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.darkGreen,
        title: Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //Horizontal
        crossAxisAlignment: CrossAxisAlignment.start, //Vertical
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _Item(
                   'Transferir',
                  Icons.monetization_on,
                  onClick: () => _showListaContatos(context),
                ),
                _Item(
                  'Feed de Transações',
                  Icons.description,
                  onClick: () => _showListaTransacoes(context)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _showListaContatos(BuildContext context){
    Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ListaContatos(),
        ));
  }

  void _showListaTransacoes(BuildContext context){
    Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ListaTransacoes(),
        ));
  }
}



class _Item extends StatelessWidget {
  final String nome;
  final IconData icone;
  final Function onClick;

  _Item(this.nome, this.icone, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () => onClick(),
          /*{
            Navigator.of(context).push(
              (MaterialPageRoute(
                builder: (context) => ListaContatos(),
              )),
            );
          },*/
          child: Container(
            width: 150,
            height: 100,
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icone,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  Text(
                    nome,
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
