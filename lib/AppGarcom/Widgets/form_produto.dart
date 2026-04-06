import 'package:flutter/material.dart';

class FormProduto extends StatelessWidget {
  const FormProduto({super.key});

  @override
  Widget build(BuildContext context) {
    final produtos = [
      {"nome": "Coca-Cola", "valor": 6.00},
      {"nome": "Batata Frita", "valor": 25.00},
      {"nome": "Hambúrguer", "valor": 18.50},
      {"nome": "Suco", "valor": 8.00},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Produtos"),
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
                  // 📷 IMAGEM
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

                  // 📄 INFORMAÇÕES
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

                  // ➕ BOTÃO ADICIONAR
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {
                      // futuramente adicionar produto na venda
                      Navigator.pop(context);
                    },
                    child: const Text("Adicionar"),
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
