import 'package:flutter/material.dart';

class FormMesa extends StatefulWidget {
  const FormMesa({super.key});

  @override
  State<FormMesa> createState() => _FormMesaState();
}

class _FormMesaState extends State<FormMesa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Mesa"),
        backgroundColor: Colors.lightBlue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Número da Mesa",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Nome do Cliente",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: "Telefone",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {},
                  child: const Text("Salvar Mesa"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
