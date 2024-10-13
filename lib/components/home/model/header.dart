import 'package:flutter/material.dart';
import 'package:nubank/util/colors.dart';

// Fazendo a classe Header herdar de PreferredSizeWidget
class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaria, // Cor de fundo da AppBar
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espaçamento entre os componentes
        children: [
          _profile(), // Chama o método que cria o perfil do usuário
          _options(), // Chama o método que cria as opções do cabeçalho
        ],
      ),
    );
  }

  // Método que retorna o tamanho preferido da AppBar
  @override
  Size get preferredSize => const Size.fromHeight(56.0); // Altura padrão da AppBar

  // Método que cria a seção de perfil do usuário
  _profile() {
    return GestureDetector(
      onTap: () {}, // Ação ao tocar no perfil
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10), // Margens do container
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80), // Borda arredondada do perfil
          color: contornoColor, // Cor de fundo do perfil
        ),
        child: IconButton(
          onPressed: () {}, // Ação do botão do perfil
          icon: const Icon(Icons.person_outlined), // Ícone do perfil
        ),
      ),
    );
  }

  // Método que cria as opções de interação do cabeçalho
  _options() {
    return Row(
      children: [
        IconButton(
          onPressed: () {}, // Ação do botão de visibilidade
          icon: const Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)), // Ícone de visibilidade
        ),
        IconButton(
          onPressed: () {}, // Ação do botão de perguntas
          icon: const Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)), // Ícone de ajuda
        ),
        IconButton(
          onPressed: () {}, // Ação do botão de e-mail
          icon: const Icon(Icons.mark_email_read_outlined, color: Color(0xFFF5F5F5)), // Ícone de e-mail
        ),
      ],
    );
  }
}
