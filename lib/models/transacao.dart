import 'package:bitebank/models/contato.dart';

class Transacao{
  final double valor;
  final Contato contato;

  Transacao(this.valor, this.contato);

  /*Transacao.fromJson(Map<String, dynamic> json);
    valor*/

  @override
  String toString() {
    return 'Transacao{valor: $valor, contato: $contato}';
  }
}