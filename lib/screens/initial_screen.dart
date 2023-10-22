import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Aprimorar atributos'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task('Força',
                'assets/images/icone_forca.png', 4),
            Task('Vitalidade',
                'assets/images/icone_vitalidade.png', 4),
            Task('Mana',
                'assets/images/icone_mana.png', 3),
            Task('Arcano',
                'assets/images/icone_arcano.png', 3),
            Task('Arco',
                'assets/images/icone_arco.png', 2),
                SizedBox(height: 60,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
