import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class VWRowExamplePage extends StatelessWidget {
  const VWRowExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VWRow'),
      ),
      body: SingleChildScrollView(
        child: VWColumn(
          children: [
            VWRow(
              gap: 10,
              padding: const EdgeInsets.all(10),
              scrollable: true,
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 150,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 150,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 150,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 100,
                  width: 150,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 150,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
              ],
            ),
            VWRow(
              gap: 2,
              padding: const EdgeInsets.all(10),
              expandItems: true,
              children: [
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 200,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 200,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 200,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 100,
                  width: 200,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 100,
                  width: 200,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
              ],
            ),
            VWRow(
              gap: 10,
              padding: const EdgeInsets.all(10),
              verticalAlignment: CrossAxisAlignment.end,
              scrollable: true,
              children: [
                Container(
                  color: Colors.blue,
                  height: 120,
                  width: 20,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 140,
                  width: 40,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 160,
                  width: 60,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 180,
                  width: 80,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 200,
                  width: 100,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
              ],
            ),
            VWRow(
              gap: 10,
              padding: const EdgeInsets.all(10),
              verticalAlignment: CrossAxisAlignment.end,
              scrollable: true,
              children: [
                Container(
                  color: Colors.blue,
                  height: 120,
                  width: 120,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 140,
                  width: 120,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 160,
                  width: 120,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  height: 180,
                  width: 120,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
                Container(
                  color: Colors.green,
                  height: 200,
                  width: 120,
                  child: const Center(
                    child: Text("1"),
                  ),
                ),
              ],
            ),
            VWRow(
              expandItems: true,
              padding: const EdgeInsets.all(10),
              gap: 10,
              children: [
                Container(
                  color: Colors.red,
                  child: const Text(
                    "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações (jornais, revistas, e sites) para testar e ajustar aspectos",
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: const Text(
                    "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações (jornais, revistas, e sites) para testar e ajustar aspectos",
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: const Text(
                    "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações (jornais, revistas, e sites) para testar e ajustar aspectos",
                  ),
                ),
              ],
            ),
            VWRow(
              scrollable: true,
              padding: const EdgeInsets.all(10),
              gap: 10,
              children: [
                Container(
                  width: 200,
                  color: Colors.red,
                  child: const Text(
                    "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações (jornais, revistas, e sites) para testar e ajustar aspectos",
                  ),
                ),
                Container(
                  width: 300,
                  color: Colors.blue,
                  child: const Text(
                    "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações (jornais, revistas, e sites) para testar e ajustar aspectos",
                  ),
                ),
                Container(
                  width: 400,
                  color: Colors.green,
                  child: const Text(
                    "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações (jornais, revistas, e sites) para testar e ajustar aspectos",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
