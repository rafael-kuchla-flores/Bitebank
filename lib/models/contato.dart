//gerar o construtor e toString -> alt + insert
class Contato{
  final int id;
  final String nome;
  final int numero_conta;

  Contato(this.id, this.nome, this.numero_conta);

  @override
  String toString() {
    return 'Contato{id: $id, nome: $nome, numero_conta: $numero_conta}';
  }
}