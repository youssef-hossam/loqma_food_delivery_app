import 'package:flutter/material.dart';

void main() {
  runApp(LoqmaApp());
}

class LoqmaApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loqma App',
      home: const Scaffold(body: Center(child: Text('Welcome to Loqma App!'))),
    );
  }
}
