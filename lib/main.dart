import 'package:fertility_app/advice/cubit/cubit/get_advice_cubit.dart';
import 'package:fertility_app/advice/view/gpt_advice.dart';
import 'package:fertility_app/classification/decisionTree.dart';
import 'package:fertility_app/classification/logisticRegression.dart';
import 'package:fertility_app/classification/neuralNetwork.dart';
import 'package:fertility_app/classification/supportVectorMachine.dart';
import 'package:fertility_app/provider/model.dart';
import 'package:fertility_app/regression/multipleRegression.dart';
import 'package:fertility_app/regression/neuralNetwork.dart';
import 'package:fertility_app/nhapThongTin.dart';
import 'package:fertility_app/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyData(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<GetAdviceCubit>(
              lazy: false, create: (BuildContext context) => GetAdviceCubit())
        ],
        child: MaterialApp(
          home: MySplashScreen(),
        ),
      )));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Please Input some information'),
        ),
        body: const MyInputPage(),
        drawer: const MyDrawer());
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
            leading: const Icon(Icons.line_axis), //add icon
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
            leading: const Icon(Icons.account_tree_outlined), //add icon
            childrenPadding: const EdgeInsets.only(left: 60), //children padding
            children: [
              ListTile(
                title: const Text("Logistic Regression"),
                onTap: () {
                  //action on press
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const logisticRegression()),
                  );
                },
              ),
              ListTile(
                title: const Text("Support Vector Machine"),
                onTap: () {
                  //action on press
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VectorMachine()),
                  );
                },
              ),
              ListTile(
                title: const Text("Decision Tree"),
                onTap: () {
                  //action on press
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyDecisionTree()),
                  );
                },
              ),

              // ListTile(
              //   title: const Text("Neural Network"),
              //   onTap: () {
              //     //action on press
              //     Navigator.pop(context);
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) =>
              //               const MyNeuralNetWorkClassification()),
              //     );
              //   },
              // ),

              //more child menu
            ],
          ),
          ExpansionTile(
            title: const Text("Advices from us"),
            leading: const Icon(Icons.healing), //add icon
            childrenPadding: const EdgeInsets.only(left: 60), //children padding
            children: [
              ListTile(
                title: const Text("ChatGPT`s advices"),
                onTap: () {
                  //action on press
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GptAdvice()),
                  );
                },
              ),
              ListTile(
                title: const Text("Doctor`s advices"),
                onTap: () {
                  //action on press
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VectorMachine()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
