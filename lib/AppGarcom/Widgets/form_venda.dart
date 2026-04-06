import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppGarcom/Configuracoes/Rotas.dart';

class FormVenda extends StatefulWidget {
  const FormVenda({super.key});

  @override
  State<FormVenda> createState() => _FormVendaState();
}

class _FormVendaState extends State<FormVenda> {
  final List<Map<String, dynamic>> produtos = [
    {"nome": "Coca-Cola", "valor": "6.00", "quantidade": 2},
    {"nome": "Batata Frita", "valor": "25.00", "quantidade": 1},
    {"nome": "Hambúrguer", "valor": "18.50", "quantidade": 3},
  ];

  void aumentarQuantidade(int index) {
    setState(() {
      produtos[index]["quantidade"]++;
    });
  }

  void diminuirQuantidade(int index) {
    setState(() {
      if (produtos[index]["quantidade"] > 0) {
        produtos[index]["quantidade"]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produtos da Mesa"),
        backgroundColor: Colors.lightBlue,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btnFechar",
            backgroundColor: Colors.red,
            onPressed: () {
              Navigator.pushNamed(context, Rotas.formFecharVenda);
            },
            child: const Icon(Icons.attach_money),
          ),

          const SizedBox(width: 10),

          FloatingActionButton(
            heroTag: "btnAdd",
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, Rotas.formProduto);
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          final produto = produtos[index];

          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.image, color: Colors.grey),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          produto["nome"].toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "R\$ ${produto["valor"]}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => diminuirQuantidade(index),
                        icon: const Icon(Icons.remove_circle_outline),
                        color: Colors.red,
                      ),
                      Text(
                        produto["quantidade"].toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () => aumentarQuantidade(index),
                        icon: const Icon(Icons.add_circle_outline),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
