import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    // Exemplos da aula
    // return MaterialApp(
    //   title: 'School',
    //   home: Scaffold(
    //     body: Container(
          
    //       padding: const EdgeInsets.all(20),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           const CircleAvatar(
    //             child: Text('R')
    //           ),
    //           const Text('Texto 1'),
    //           const Text('Texto 2'),
    //           const Text('Texto 3'),
    //           const Divider(),
    //           const Row(children: [
    //             Icon(Icons.add, color: Colors.green),
    //             SizedBox(width: 100, height: 100),
    //             Spacer(),
    //             Icon(Icons.access_alarm, color: Colors.yellow),
    //           ],),
    //           Switch(value: true, onChanged: (val) {},),
    //           const Card(
    //             child: Padding(
    //               padding: EdgeInsets.all(16),
    //               child: Text('Ivo')
    //               ),
    //           )
    //         ]),

    //     ),
    //   ),
    // );

    return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Container(
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
                      const SizedBox(width: 7,),
                      const Text('Rafael Silva', style: TextStyle(fontWeight: FontWeight.bold),),
                      const Spacer(),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    ],
                  )
                )
              ),
              const SizedBox(height: 15,),
              const Text('Minhas estatísticas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Icon(Icons.list),
                  SizedBox(width: 5,),
                  Text('Total de notas: 0')
                ]
              ),
              const Row(
                children: [
                  Icon(Icons.done_all),
                  SizedBox(width: 5,),
                  Text('Concluídas: 0')
                ]
              ),
              const SizedBox(height: 15,),
              const Divider(),
              const SizedBox(height: 10,),
              const Text('Configurações', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15,),
              Row(
                children: [
                  const Text('Tema escuro'),
                  const Spacer(),
                  Switch(value: true, onChanged: (val) {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}