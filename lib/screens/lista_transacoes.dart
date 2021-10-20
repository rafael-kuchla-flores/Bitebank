import 'package:bitebank/models/contato.dart';
import 'package:bitebank/models/transacao.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class ListaTransacoes extends StatelessWidget {
  final List<Transacao> transacoes = [];

  @override
  Widget build(BuildContext context) {
    transacoes.add(Transacao(100.0, Contato(0, 'rafael', 3000)));
    transacoes.add(Transacao(100.0, Contato(0, 'rafa', 3111)));
    transacoes.add(Transacao(100.0, Contato(0, 'fael', 3222)));
    transacoes.add(Transacao(100.0, Contato(0, 'rael', 3333)));
    return Scaffold(
      appBar: AppBar(
        title: Text('Transações'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            final Transacao transacao = transacoes[index];
            return Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(
                  transacao.valor.toString(),
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                subtitle: Text(
                  transacao.contato.numeroConta.toString(),
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            );
          },
        itemCount: transacoes.length,
      ),
    );
  }
}
