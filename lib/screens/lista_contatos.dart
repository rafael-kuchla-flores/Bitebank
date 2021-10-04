import 'package:bitebank/database/app_database.dart';
import 'package:bitebank/models/contato.dart';
import 'package:bitebank/screens/novo_contato.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
//  final List<Contato> contatos = []; // List() foi substituido por: []
  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
//    contatos.add(Contato(0,'Eduardo',1000));
//    contatos.add(Contato(0,'Jose',1001));
//    contatos.add(Contato(0,'Alfredo',1002));
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: FutureBuilder<List<Contato>>(
        initialData: [],
        future: Future.delayed(Duration(seconds: 1)).then((value) => buscar()),
//        future: buscar(),
        builder: (context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
          //Quando o Future ainda não foi executado
//            case ConnectionState.none:
//              break;
          //Verificando se o Future ainda esta rodando e não foi finalizado
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text('Loading!!!'),
                  ],
                ),
              );

              break;
          //Quando nosso snapshot possui dado disponivél mas o Future ainda não finalizou.
//            case ConnectionState.active:
//              break;
          //
            case ConnectionState.done:
              final List<Contato> contatos = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final Contato contato = contatos[index];
                  return _ItemContato(contato);
                },
                itemCount: contatos.length,
              );
              break;
          }
          return Text('Erro ao carregar Lista!!');
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
            MaterialPageRoute(
              builder: (context) => ContactForm(),
            ),
            //).then((novoContato) => debugPrint(novoContato.toString()),);
          ).then((value) {
            setState((){});
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class _ItemContato extends StatelessWidget {
  final Contato contato;

  _ItemContato(this.contato);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contato.nome,
          style: TextStyle(fontSize: 24.0),
        ),
        subtitle: Text(
          contato.numero_conta.toString(),
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
