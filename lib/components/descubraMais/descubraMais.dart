import 'package:flutter/material.dart';
import 'package:nubank/util/colors.dart'; // Importa as cores personalizadas

class DescubraMais extends StatelessWidget {
  const DescubraMais({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinha todos os elementos à esquerda
      mainAxisAlignment: MainAxisAlignment.start, // Alinhamento vertical
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15), // Margem à esquerda do título
          child: Text(
            'Descubra Mais', // Título da seção
            style: TextStyle(fontSize: 24), // Estilo do texto
          ),
        ),
        _cardSeguro() // Chama o método que cria o cartão de seguro
      ],
    );
  }

  // Método que cria o cartão de seguro
  _cardSeguro() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10), // Margem do cartão
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Borda arredondada do cartão
      ),
      child: Padding(
        padding: const EdgeInsets.all(10), // Padding de 10px em todos os lados
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Alinha os textos à esquerda
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0), // Borda arredondada da imagem
              child: Image.asset('image/seguroVida.png'), // Imagem do seguro de vida
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5), // Padding vertical de 5px
              child: Text(
                'Seguro de Vida', // Título do cartão
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Estilo do texto
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5), // Padding vertical de 5px
              child: Text(
                'Cuide bem de quem você ama de um jeito simples', // Descrição do seguro
                style: TextStyle(fontSize: 18, color: Colors.black54), // Estilo do texto
              ),
            ),
            _botaoConhecer() // Chama o método que cria o botão "Conhecer"
          ],
        ),
      ),
    );
  }

  // Método que cria o botão "Conhecer"
  _botaoConhecer() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 5), // Padding do botão
      child: ElevatedButton(
        onPressed: () {}, // Ação do botão (ainda não implementada)
        style: ElevatedButton.styleFrom(
          backgroundColor: botaoRenegEConhc, // Cor de fundo do botão
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15), // Bordas arredondadas do botão
          ),
        ),
        child: const Text(
          'Conhecer', // Texto do botão
          style: TextStyle(
            fontWeight: FontWeight.bold, // Negrito
            color: Colors.white, // Cor do texto
          ),
        ),
      ),
    );
  }
}
