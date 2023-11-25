import 'package:flutter/material.dart';

class MyGaussian extends StatefulWidget {
  const MyGaussian({super.key});

  @override
  State<MyGaussian> createState() => _MyGaussianState();
}

class _MyGaussianState extends State<MyGaussian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gaussian')),
    );
  }
}
