import 'package:flutter/material.dart';

class FormFecharVenda extends StatelessWidget {
  const FormFecharVenda({super.key});

  @override
  Widget build(BuildContext context) {
    final produtos = [
      {"nome": "Coca-Cola", "valor": 6.00, "quantidade": 2},
      {"nome": "Batata Frita", "valor": 25.00, "quantidade": 1},
      {"nome": "Hambúrguer", "valor": 18.50, "quantidade": 3},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Fechar Venda"),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          final produto = produtos[index];
          final double valor = produto["valor"] as double;
          final int quantidade = produto["quantidade"] as int;
          final double totalItem = valor * quantidade;

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
                          "R\$ ${valor.toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Qtd: $quantidade",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "R\$ ${totalItem.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
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
