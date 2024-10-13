import 'package:flutter/material.dart';
import 'package:nubank/util/colors.dart'; // Importa as cores personalizadas

class CardCredit extends StatelessWidget {
  const CardCredit({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // Largura da tela
    return Container(
      margin: const EdgeInsets.all(16), // Margem em torno do container
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Estica os filhos
        children: [
          _card1(screenWidth), // Primeiro card
          const SizedBox(height: 10), // Espaçamento entre os cards
          _card2(screenWidth), // Segundo card
        ],
      ),
    );
  }

  // Método que cria o primeiro card
  _card1(double screenWidth) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15), // Margem interna
      width: screenWidth, // Define a largura com base no tamanho da tela
      padding: const EdgeInsets.all(20), // Padding interno do card
      decoration: BoxDecoration(
        color: Colors.white, // Cor de fundo do card
        borderRadius: BorderRadius.circular(8), // Bordas arredondadas
        boxShadow: const [ // Sombra do card
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6, // Desfoque da sombra
            offset: Offset(0, 2), // Deslocamento da sombra
          )
        ],
      ),
      child: const Row( // Elementos do card dispostos em linha
        children: [
          Icon(Icons.credit_card, color: Colors.black), // Ícone do cartão
          SizedBox(width: 12), // Espaçamento entre ícone e texto
          Text(
            'Meus cartões',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Negrito
            ),
          ),
        ],
      ),
    );
  }

  // Método que cria o segundo card
  _card2(double screenWidth) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10), // Margem interna
      width: screenWidth, // Mesma largura que o primeiro card
      padding: const EdgeInsets.all(10), // Padding interno do card
      decoration: BoxDecoration(
        color: Colors.white, // Cor de fundo do card
        borderRadius: BorderRadius.circular(8), // Bordas arredondadas
        boxShadow: const [ // Sombra do card
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6, // Desfoque da sombra
            offset: Offset(0, 2), // Deslocamento da sombra
          )
        ],
      ),
      child: const Column( // Elementos do card dispostos em coluna
        crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento à esquerda
        children: [
          Text(
            'Guarde seu dinheiro em caixinhas',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Negrito
              color: Color(0xFF8A05BE), // Cor do texto
            ),
          ),
          SizedBox(height: 5), // Espaçamento entre os textos
          Text('Acessando a área de planejamento'), // Texto informativo
        ],
      ),
    );
  }
}
