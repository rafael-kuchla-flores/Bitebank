import 'package:flutter/material.dart';

class ListaContatos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contatos'),
        ),
      body: ListView(
        children: [
            Card(
              child: ListTile(
                title: Text(
                    'kuchla',
                  style: TextStyle(fontSize: 24.0),
                ),
                subtitle: Text(
                    '171',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
