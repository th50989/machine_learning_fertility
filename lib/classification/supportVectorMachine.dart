import 'package:flutter/material.dart';

class VectorMachine extends StatefulWidget {
  const VectorMachine({super.key});

  @override
  State<VectorMachine> createState() => _VectorMachineState();
}

class _VectorMachineState extends State<VectorMachine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Support Vector Machine')),
    );
  }
}
