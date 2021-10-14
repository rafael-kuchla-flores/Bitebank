import 'package:bitebank/database/dao/contato_dao.dart';
import 'package:bitebank/models/contato.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _numeroContaController = TextEditingController();
  final ContatoDao _dao = ContatoDao();

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
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome Completo',
              ),
              style: TextStyle(fontSize: 24.0),
            ),
            TextField(
              controller: _numeroContaController,
              decoration: InputDecoration(
                labelText: 'Numero da Conta',
              ),
              style: TextStyle(fontSize: 24.0),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final nome = _nomeController.text;
                    final numeroConta =
                        int.tryParse(_numeroContaController.text);
                    final Contato novoContato = Contato(0, nome, numeroConta!);
                    _dao.salvar(novoContato).then((id) => Navigator.pop(context));
                  },
                  child: Text('Cadastrar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
