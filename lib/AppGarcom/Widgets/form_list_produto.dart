import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppGarcom/Configuracoes/Rotas.dart';

class FormListProduto extends StatelessWidget {
  const FormListProduto({super.key});

  @override
  Widget build(BuildContext context) {
    final produtos = [
      {"nome": "Coca-Cola", "valor": 6.00},
      {"nome": "Batata Frita", "valor": 25.00},
      {"nome": "Hambúrguer", "valor": 18.50},
      {"nome": "Suco Natural", "valor": 8.00},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Produtos"),
        backgroundColor: Colors.lightBlue,
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
                          "R\$ ${(produto["valor"] as double).toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Rotas.formEditProduto);
                    },
                    child: const Text("Editar"),
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
