import 'package:flutter/material.dart';
import 'package:nubank/util/colors.dart'; // Importa as cores personalizadas

class Secaocartao extends StatelessWidget {
  const Secaocartao({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20), // Margem lateral
      child: Wrap(
        direction: Axis.vertical, // Direção vertical para os filhos
        crossAxisAlignment: WrapCrossAlignment.start, // Alinha filhos à esquerda
        spacing: 16, // Espaçamento entre os filhos
        children: [
          _textCreditCard(), // Exibe o título do cartão
          const Padding(padding: EdgeInsets.only(bottom: 10)), // Espaçamento
          _invoice(), // Exibe informações da fatura
          _vencimentoFatura(), // Exibe data de vencimento da fatura
          Padding(padding: EdgeInsets.only(bottom: 15)), // Espaçamento
          _botao(), // Botão de renegociação
        ],
      ),
    );
  }

  // Método que retorna o texto do cartão de crédito
  _textCreditCard() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaçamento entre itens
      children: [
        Text(
          'Cartão de crédito',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Estilo do texto
        ),
        Icon(Icons.chevron_right) // Ícone de seta à direita
      ],
    );
  }

  // Método que retorna as informações da fatura
  _invoice() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start, // Alinhamento vertical
      crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento horizontal
      children: [
        Text(
          'Fatura Fechada',
          style: TextStyle(
            color: Colors.black54, // Cor do texto
            fontSize: 18 // Tamanho da fonte
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 15)), // Espaçamento
        Text(
          'R\$ 500,00',
          style: TextStyle(fontSize: 24), // Estilo do valor da fatura
        )
      ],
    );
  }

  // Método que retorna a data de vencimento da fatura
  _vencimentoFatura() {
    return const Text(
      'Vencimento dia: 15 de novembro',
      style: TextStyle(color: Colors.black54, fontSize: 18), // Estilo do texto
    );
  }

  // Método que retorna o botão de renegociação
  _botao() {
    return ElevatedButton(
      onPressed: () {}, // Ação do botão (ainda não definida)
      style: ElevatedButton.styleFrom(
        backgroundColor: botaoRenegEConhc, // Cor de fundo do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Bordas arredondadas
        ),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8), // Padding do botão
      ),
      child: const Text(
        'Renegociar',
        style: TextStyle(
          fontWeight: FontWeight.bold, // Negrito
          color: Colors.black, // Cor do texto
          fontSize: 18 // Tamanho da fonte
        ),
      ),
    );
  }
}
