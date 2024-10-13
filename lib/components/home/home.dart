import 'package:flutter/material.dart';
import 'package:nubank/components/acoount/account.dart';
import 'package:nubank/components/actions/menu.dart';
import 'package:nubank/components/creditCard/cardCredit.dart';
import 'package:nubank/components/descubraMais/descubraMais.dart';
import 'package:nubank/components/emprestimo/emprestimo.dart';
import 'package:nubank/components/home/model/header.dart';
import 'package:nubank/components/secaoCartao/secaoCartao.dart';
import 'package:nubank/util/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaria,
      appBar:  const Header(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Account(),
              Menu(),
              CardCredit(),
              Padding(padding:EdgeInsets.all(30), child: Divider(thickness: 1),),
              Secaocartao(),
              Padding(padding:EdgeInsets.all(30), child: Divider(thickness: 1),),
              EmprestimoArea(),
              Padding(padding:EdgeInsets.all(30), child: Divider(thickness: 1),),
              DescubraMais(),
            ],
          ),
        ),
      ),
    );
  }
}
