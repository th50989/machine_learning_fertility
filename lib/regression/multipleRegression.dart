import 'package:flutter/material.dart';

class MyMultipleRegression extends StatefulWidget {
  const MyMultipleRegression({super.key});

  @override
  State<MyMultipleRegression> createState() => _MyMultipleRegressionState();
}

class _MyMultipleRegressionState extends State<MyMultipleRegression> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Regression'),
      ),
    );
  }
}
