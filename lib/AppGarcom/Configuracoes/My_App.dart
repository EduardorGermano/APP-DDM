import 'package:flutter/material.dart';
import 'Rotas.dart';
import 'package:flutter_application_1/AppGarcom/Widgets/principal.dart';

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
      routes: {Rotas.home: (context) => const HomePage()},
    );
  }
}
