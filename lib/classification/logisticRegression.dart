import 'package:flutter/material.dart';

class logisticRegression extends StatefulWidget {
  const logisticRegression({super.key});

  @override
  State<logisticRegression> createState() => _logisticRegressionState();
}

class _logisticRegressionState extends State<logisticRegression> {
  double result = 0.0;
  List<double> a = [-0.33, 0.69, 0.0, 1.0, 1.0, 0.0, 0.8, 0.0, 0.88];
  List<double> b = [-0.33, 0.94, 1.0, 0.0, 1.0, 0.0, 0.8, 1.0, 0.31];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Logistic Regression')),
      body: Column(children: [
        Center(
            child: ElevatedButton(
                onPressed: () {
                  result = score(a);
                  print('result:' + result.toString());
                  if (result >= 0.5) {
                    result = 1;
                  } else
                    result = 0;
                  setState(() {
                    result = result;
                  });
                },
                child: Text('Check your fertility'))),
        Text('Your fertility seems ${result == 0 ? 'Good' : 'Altered'}')
      ]),
    );
  }

  double score(List<double> input) {
    return -2.0194895548258818 +
        input[0] * 0.44672901702090906 +
        input[1] * 0.38552600269048865 +
        input[2] * 0.4432102422280889 +
        input[3] * -0.5910052677583321 +
        input[4] * 0.22525251906589835 +
        input[5] * -0.4423162890470863 +
        input[6] * -0.3974724021648983 +
        input[7] * 0.13456802645624077 +
        input[8] * 0.122116153702445;
  }
}
