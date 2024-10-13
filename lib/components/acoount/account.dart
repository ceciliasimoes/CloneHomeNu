import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16), // Margem ao redor do container
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento à esquerda
        children: [
          _accountChavron(), // Chama o método que exibe o título da conta
          const Padding(padding: EdgeInsets.only(bottom: 10)), // Espaçamento entre os widgets
          _moneyAccount() // Chama o método que exibe o saldo da conta
        ],
      ),
    );
  }

  // Método que exibe o título "Conta" com um ícone de seta
  _accountChavron() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaço entre os itens
      children: [
        Text(
          'Conta',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Estilo do texto
        ),
        Icon(Icons.chevron_right) // Ícone de seta
      ],
    );
  }

  // Método que exibe o saldo da conta
  _moneyAccount() {
    return const Text(
      'R\$ 10000,00', // Valor do saldo
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), // Estilo do texto
    );
  }
}
