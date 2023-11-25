import 'package:fertility_app/classification/gaussian.dart';
import 'package:fertility_app/classification/neuralNetwork.dart';
import 'package:fertility_app/regression/multipleRegression.dart';
import 'package:fertility_app/regression/neuralNetwork.dart';
import 'package:fertility_app/nhapThongTin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Please Input some information'),
          ),
          body: const MyInputPage(),
          drawer: const MyDrawer()),
    );
  }
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(child: Text('Fertility Check')),
          ),
          ExpansionTile(
            title: const Text("Regression"),
            leading: const Icon(Icons.person), //add icon
            childrenPadding: const EdgeInsets.only(left: 60), //children padding
            children: [
              ListTile(
                title: const Text("Multiple Regression"),
                onTap: () {
                  //action on press

                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyMultipleRegression()),
                  );
                },
              ),
              ListTile(
                title: const Text("Neural Network"),
                onTap: () {
                  //action on press
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyNeuralNetwork()),
                  );
                },
              ),

              //more child menu
            ],
          ),
          ExpansionTile(
            title: const Text("Classification"),
            leading: const Icon(Icons.person), //add icon
            childrenPadding: const EdgeInsets.only(left: 60), //children padding
            children: [
              ListTile(
                title: const Text("Naive Bayes - Gaussian "),
                onTap: () {
                  //action on press
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyGaussian()),
                  );
                },
              ),

              ListTile(
                title: const Text("Neural Network"),
                onTap: () {
                  //action on press
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyNeuralNetWorkClassification()),
                  );
                },
              ),

              //more child menu
            ],
          ),
        ],
      ),
    );
  }
}
