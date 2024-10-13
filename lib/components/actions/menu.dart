import 'package:flutter/material.dart';
import 'package:nubank/util/colors.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16), // Margem ao redor do container
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Permite rolagem horizontal
        child: Wrap(
          direction: Axis.horizontal, // Itens organizados horizontalmente
          children: [
            // Adiciona ícones do menu
            _itemIcon(icon: Icons.pix, nome: 'Área Pix', isFirst: true),
            _itemIcon(icon: Icons.money, nome: 'Pagamento'),
            _itemIcon(icon: Icons.qr_code, nome: 'QR Code'),
            _itemIcon(icon: Icons.attach_money, nome: 'Transferir'),
          ],
        ),
      ),
    );
  }

  // Método que cria um item de ícone com seu nome
  _itemIcon({required IconData icon, required String nome, bool? isFirst}) {
    return Container(
      padding: (isFirst ?? false) // Condicional para o primeiro item
          ? const EdgeInsets.only(right: 7, left: 20) // Padding especial para o primeiro item
          : const EdgeInsets.symmetric(horizontal: 7), // Padding padrão
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10), // Espaçamento abaixo do ícone
            padding: const EdgeInsets.all(20), // Padding interno do ícone
            decoration: BoxDecoration(
                color: contornoColor, // Cor de fundo do ícone
                borderRadius: BorderRadius.circular(48)), // Borda arredondada
            child: IconButton(onPressed: () {}, icon: Icon(icon)), // Ícone clicável
          ),
          Text(
            nome, // Nome do item
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24), // Estilo do texto
          )
        ],
      ),
    );
  }
}
