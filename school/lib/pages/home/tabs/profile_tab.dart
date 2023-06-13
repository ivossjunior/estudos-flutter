import 'package:flutter/material.dart';

import '../../../components/icon_button_component.dart';
import '../../../components/spacer_component.dart';

class PerfilTab extends StatelessWidget {
  const PerfilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),// como fiz: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        child: Text('R')
                      ),
                      const SpacerComponent(isHorizontal: true,),
                      const Text('Rafael Silva', style: TextStyle(fontWeight: FontWeight.bold),),
                      const SpacerComponent(isFull: true,),
                      IconButtonComponent(icon: Icons.more_vert, onPressed: () {},)
                    ],
                  )
                )
              ),
              const SpacerComponent(),
              const Text('Minhas estatísticas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SpacerComponent(),
              const Row(
                children: [
                  Icon(Icons.list),
                  SpacerComponent(isHorizontal: true, size: 5),
                  Text('Total de notas: 0')
                ]
              ),
              const Row(
                children: [
                  Icon(Icons.done_all),
                  SpacerComponent(isHorizontal: true, size: 5),
                  Text('Concluídas: 0')
                ]
              ),
              const SpacerComponent(),
              const Divider(),
              const SpacerComponent(),
              const Text('Configurações', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SpacerComponent(),
              Row(
                children: [
                  const Text('Tema escuro'),
                  const SpacerComponent(isFull: true,),
                  Switch(value: true, onChanged: (val) {})
                ],
              )
            ],
          ),
        );
  }
}