import 'package:bitebank/database/dao/contato_dao.dart';
import 'package:bitebank/models/contato.dart';
import 'package:bitebank/screens/lista_contatos.dart';
import 'package:flutter/material.dart';

class ContactFormAlterar extends StatefulWidget {
  final Contato contatoAlterar;

  ContactFormAlterar({required this.contatoAlterar});

  @override
  _ContactFormAlterarState createState() {
    return _ContactFormAlterarState(contatoAlterar);
  }
}

class _ContactFormAlterarState extends State<ContactFormAlterar> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _numeroContaController = TextEditingController();
  final ContatoDao _dao = ContatoDao();
  final Contato contatoAlterar;

  _ContactFormAlterarState(this.contatoAlterar);

  //Preenchendo os valores no formulario

  void initState(){
    super.initState();
    _nomeController = new TextEditingController(text: '${contatoAlterar.nome}');
    _numeroContaController = new TextEditingController(text: '${contatoAlterar.numeroConta}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alterar Contato'),
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
                  onPressed: () => _alterarContato(context),
                  child: Text('Alterar'),
                ),
              ),
            )
          ],
      ),
    ),
    );
  }

  void _alterarContato(BuildContext context){
    final nome = _nomeController.text;
    final conta = int.tryParse(_numeroContaController.text);

    final contatoEditado = Contato(contatoAlterar.id, nome, conta!);

    _dao.alterar(contatoEditado).then((id) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ListaContatos())));
  }
}


