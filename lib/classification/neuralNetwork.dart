import 'package:flutter/material.dart';

class MyNeuralNetWorkClassification extends StatefulWidget {
  const MyNeuralNetWorkClassification({super.key});

  @override
  State<MyNeuralNetWorkClassification> createState() =>
      _MyNeuralNetWorkClassificationState();
}

class _MyNeuralNetWorkClassificationState
    extends State<MyNeuralNetWorkClassification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Neural Network Classification')),
    );
  }
}
