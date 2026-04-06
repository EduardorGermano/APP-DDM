import 'package:flutter/material.dart';
import 'Rotas.dart';
import 'package:flutter_application_1/AppGarcom/Widgets/form_fechar_venda.dart';
import 'package:flutter_application_1/AppGarcom/Widgets/form_produto.dart';
import 'package:flutter_application_1/AppGarcom/Widgets/form_venda.dart';
import 'package:flutter_application_1/AppGarcom/Widgets/principal.dart';
import 'package:flutter_application_1/AppGarcom/Widgets/form_mesa.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP Garçom',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const HomePage(),
        Rotas.formMesa: (context) => const FormMesa(),
        Rotas.formVenda: (context) => const FormVenda(),
        Rotas.formProduto: (context) => const FormProduto(),
        Rotas.formFecharVenda: (context) => const FormFecharVenda(),
      },
    );
  }
}
