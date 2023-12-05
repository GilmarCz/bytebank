import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Transferências'),
        ),
        body: ListView(
          children: const [
            Transferencia(450000000.0, 453),
            Transferencia(8001.0, 1234),
            Transferencia(99998.0, 1111),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Transferencia extends StatelessWidget {
  final double valor;
  final int conta;
  const Transferencia(this.valor, this.conta,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(valor.toStringAsFixed(1)),
        subtitle: Text(conta.toString()),
      ),
    );
  }
}
