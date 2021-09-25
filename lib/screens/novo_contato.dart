import 'package:flutter/material.dart';

class NovoContato extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome Completo'
              ),
              style: TextStyle(fontSize: 24.0),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Numero da Conta'
              ),
              style: TextStyle(fontSize: 24.0),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: (){

              },
              child: Text('Criar'),
            )
          ],
        ),
      ),
    );
  }
}
