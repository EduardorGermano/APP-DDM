import 'package:flutter/material.dart';

class FormConfig extends StatelessWidget {
  const FormConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurações"),
        backgroundColor: Colors.lightBlue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.language),
                title: const Text("Idioma"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 10),

            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text("Tema"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            const SizedBox(height: 10),

            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.text_fields),
                title: const Text("Fonte"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
