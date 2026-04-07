import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppGarcom/Configuracoes/Rotas.dart';

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

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: Text(
                "APP Garçom",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Configurações"),
              onTap: () {
                Navigator.pushNamed(context, Rotas.formConfig);
              },
            ),

            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text("Cadastro de Produto"),
              onTap: () {
                Navigator.pushNamed(context, Rotas.formCadProduto);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text("Cadastro de Funcionário"),
              onTap: () {
                Navigator.pushNamed(context, Rotas.formCadFuncionario);
              },
            ),

            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Lista de Produtos"),
              onTap: () {
                Navigator.pushNamed(context, Rotas.formListProduto);
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.pushNamed(context, Rotas.formMesa);
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
                      Navigator.pushNamed(context, Rotas.formVenda);
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
