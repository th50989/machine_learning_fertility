import 'package:fertility_app/nhapThongTin.dart';
import 'package:fertility_app/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class logisticRegression extends StatefulWidget {
  const logisticRegression({super.key});

  @override
  State<logisticRegression> createState() => _logisticRegressionState();
}

class _logisticRegressionState extends State<logisticRegression> {
  bool result = false;
  List<double> data = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Logistic Regression')),
      body: Column(children: [
        Center(
            child: ElevatedButton(
                onPressed: () {
                  showdialog(context);
                  handle();
                },
                child: Text('Check your fertility'))),
        Text('Your fertility data is: $data'),
        Text('Your fertility seems ${result == false ? 'Good' : 'Altered'}')
      ]),
    );
  }

  void showdialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        // Show the first popup
        return const AlertDialog(
          backgroundColor: Colors.white,
          title: Text('Calculating...'),
          content: Image(image: AssetImage("./assets/images/a.gif")),
        );
      },
    );
  }

  double handle() {
    MyData myData = Provider.of<MyData>(context, listen: false);
    print(myData.myGlobalVariable);
    setState(() {
      data = myData.myGlobalVariable;
    });

    return 0.0;
  }
  // double score(List<double> input) {
  //   return -2.0194895548258818 +
  //       input[0] * 0.44672901702090906 +
  //       input[1] * 0.38552600269048865 +
  //       input[2] * 0.4432102422280889 +
  //       input[3] * -0.5910052677583321 +
  //       input[4] * 0.22525251906589835 +
  //       input[5] * -0.4423162890470863 +
  //       input[6] * -0.3974724021648983 +
  //       input[7] * 0.13456802645624077 +
  //       input[8] * 0.122116153702445;
  // }
}
