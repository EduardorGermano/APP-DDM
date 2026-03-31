import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mesas = [
      {"numero": 1, "cliente": "João"},
      {"numero": 2, "cliente": "Maria"},
      {"numero": 3, "cliente": "Carlos"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("APP Garçom"),
        backgroundColor: Colors.lightBlue,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.pushNamed(context, '/form_mesa');
        },
        child: const Icon(Icons.add),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: mesas.length,
        itemBuilder: (context, index) {
          final mesa = mesas[index];

          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mesa ${mesa["numero"]}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        mesa["cliente"].toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/form_venda');
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
