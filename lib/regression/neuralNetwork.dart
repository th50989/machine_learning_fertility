import 'package:flutter/material.dart';

class MyNeuralNetwork extends StatefulWidget {
  const MyNeuralNetwork({super.key});

  @override
  State<MyNeuralNetwork> createState() => _MyNeuralNetworkState();
}

class _MyNeuralNetworkState extends State<MyNeuralNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neural Network'),
      ),
    );
  }
}
