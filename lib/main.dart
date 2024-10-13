import 'package:flutter/material.dart';
import 'package:nubank/components/home/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

 @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Nubank',
    theme: ThemeData(
      primaryColor: const Color(0xFF8A05BE), 
    ),
      home: const Home(),// Definindo a cor primária diretamente
  );
}

}
