import 'package:flutter/material.dart';

class EmprestimoArea extends StatelessWidget {
  const EmprestimoArea({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30), // Margens do container
      child: Row(
        children: [
          _textEmprestimo(), // Chama o método que cria a seção de empréstimo
        ],
      ),
    );
  }

  // Método que cria a seção de texto sobre empréstimo
  _textEmprestimo() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinha todos os textos à esquerda
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha texto à esquerda e ícone à direita
          children: [
            Text(
              'Empréstimo', // Título da seção
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Estilo do título
            ),
            Icon(Icons.chevron_right), // Ícone de seta à direita
          ],
        ),
        SizedBox(height: 8), // Espaçamento entre o título e a descrição
        Text(
          'Tudo certo! Você está em dia', // Descrição do status do empréstimo
          style: TextStyle(fontSize: 18), // Estilo da descrição
        ),
      ],
    );
  }
}
