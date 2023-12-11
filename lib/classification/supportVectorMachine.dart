import 'package:fertility_app/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VectorMachine extends StatefulWidget {
  const VectorMachine({super.key});

  @override
  State<VectorMachine> createState() => _VectorMachineState();
}

class _VectorMachineState extends State<VectorMachine> {
  var ketqua = -1;
  @override
  Widget build(BuildContext context) {
    if (ketqua == 0) {
      return Scaffold(
        appBar: AppBar(title: Text('Support Vector Machine')),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  handledata(context, ketqua);
                },
                child: Text('Check your fertility')),
            Text('Your fertility seems not normal')
          ]),
        ),
      );
    }
    if (ketqua == 1) {
      return Scaffold(
        appBar: AppBar(title: Text('Support Vector Machine')),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  handledata(context, ketqua);
                },
                child: Text('Check your fertility')),
            Text('Your fertility seems normal')
          ]),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text('Support Vector Machine')),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  var kq = handledata(context, ketqua);
                  print(kq);
                  if (kq > -1.0 || kq < -1.003) {
                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        ketqua = 0;
                      });
                    });
                  } else {
                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        ketqua = 1;
                      });
                    });
                  }
                },
                child: Text('Check your fertility')),
          ]),
        ),
      );
    }
  }
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

double handledata(BuildContext context, int ketqua) {
  MyData myData = Provider.of<MyData>(context, listen: false);
  showdialog(context);
  Future.delayed(Duration(seconds: 2), () {
    Navigator.of(context).pop(); // Close the first popup
    // Show the second popup
  });

  return score(myData.myGlobalVariable);
}

//if kq <-1.0 || kq >-1.001
// {
//normal
// }
//else not normal
double score(List<double> input) {
  return -1.00253108915001 +
      (-1.0 * input[0] +
              0.78 * input[1] +
              1.0 * input[2] +
              0.0 * input[3] +
              1.0 * input[4] +
              1.0 * input[5] +
              1.0 * input[6] +
              1.0 * input[7] +
              0.25 * input[8]) *
          -1.742292803060045 +
      (-0.33 * input[0] +
              0.5 * input[1] +
              1.0 * input[2] +
              1.0 * input[3] +
              0.0 * input[4] +
              -1.0 * input[5] +
              0.8 * input[6] +
              0.0 * input[7] +
              0.88 * input[8]) *
          -3.5155874208109763 +
      (-1.0 * input[0] +
              1.0 * input[1] +
              1.0 * input[2] +
              0.0 * input[3] +
              1.0 * input[4] +
              1.0 * input[5] +
              0.6 * input[6] +
              0.0 * input[7] +
              0.25 * input[8]) *
          -5.942331561262731 +
      (1.0 * input[0] +
              0.67 * input[1] +
              1.0 * input[2] +
              1.0 * input[3] +
              0.0 * input[4] +
              -1.0 * input[5] +
              0.8 * input[6] +
              0.0 * input[7] +
              0.31 * input[8]) *
          -6.1702573350974195 +
      (-0.33 * input[0] +
              0.69 * input[1] +
              1.0 * input[2] +
              1.0 * input[3] +
              1.0 * input[4] +
              -1.0 * input[5] +
              1.0 * input[6] +
              -1.0 * input[7] +
              0.75 * input[8]) *
          -0.3178511879900791 +
      (1.0 * input[0] +
              0.56 * input[1] +
              1.0 * input[2] +
              0.0 * input[3] +
              0.0 * input[4] +
              1.0 * input[5] +
              0.6 * input[6] +
              0.0 * input[7] +
              0.5 * input[8]) *
          -0.3399567508940324 +
      (-0.33 * input[0] +
              0.61 * input[1] +
              1.0 * input[2] +
              0.0 * input[3] +
              1.0 * input[4] +
              0.0 * input[5] +
              1.0 * input[6] +
              -1.0 * input[7] +
              0.63 * input[8]) *
          -0.04666683690131392 +
      (1.0 * input[0] +
              0.75 * input[1] +
              1.0 * input[2] +
              0.0 * input[3] +
              0.0 * input[4] +
              0.0 * input[5] +
              0.6 * input[6] +
              0.0 * input[7] +
              0.25 * input[8]) *
          -4.828048258856208 +
      (-0.33 * input[0] +
              0.67 * input[1] +
              0.0 * input[2] +
              0.0 * input[3] +
              0.0 * input[4] +
              -1.0 * input[5] +
              0.8 * input[6] +
              -1.0 * input[7] +
              0.44 * input[8]) *
          -6.610281308370645 +
      (1.0 * input[0] +
              0.67 * input[1] +
              0.0 * input[2] +
              0.0 * input[3] +
              1.0 * input[4] +
              0.0 * input[5] +
              0.8 * input[6] +
              -1.0 * input[7] +
              0.25 * input[8]) *
          -3.9758277065900285 +
      (-0.33 * input[0] + 0.58 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.8 * input[6] + 1.0 * input[7] + 0.19 * input[8]) * -9.983530184162072 +
      (-0.33 * input[0] + 0.67 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.8 * input[6] + 0.0 * input[7] + 0.5 * input[8]) * -0.9861777155236537 +
      (1.0 * input[0] + 0.64 * input[1] + 0.0 * input[2] + 0.0 * input[3] + 0.0 * input[4] + 0.0 * input[5] + 1.0 * input[6] + -1.0 * input[7] + 0.63 * input[8]) * -0.9138336162683863 +
      (1.0 * input[0] + 0.81 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 0.0 * input[4] + 0.0 * input[5] + 1.0 * input[6] + -1.0 * input[7] + 0.38 * input[8]) * -1.5983548036692499 +
      (0.33 * input[0] + 0.78 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 0.0 * input[4] + 0.0 * input[5] + 1.0 * input[6] + 1.0 * input[7] + 0.06 * input[8]) * -7.413145120564784 +
      (1.0 * input[0] + 0.56 * input[1] + 0.0 * input[2] + 0.0 * input[3] + 0.0 * input[4] + 1.0 * input[5] + 0.8 * input[6] + 0.0 * input[7] + 1.0 * input[8]) * -8.500596093303216 +
      (1.0 * input[0] + 0.94 * input[1] + 1.0 * input[2] + 1.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.2 * input[6] + -1.0 * input[7] + 0.25 * input[8]) * -9.32281921259111 +
      (1.0 * input[0] + 0.75 * input[1] + 1.0 * input[2] + 1.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.8 * input[6] + 1.0 * input[7] + 0.25 * input[8]) * -0.564343258865436 +
      (-1.0 * input[0] + 0.56 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 1.0 * input[6] + -1.0 * input[7] + 0.63 * input[8]) * -2.1216624485380335 +
      (-0.33 * input[0] + 0.5 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + -1.0 * input[5] + 0.8 * input[6] + -1.0 * input[7] + 0.5 * input[8]) * -10.0 +
      (1.0 * input[0] + 0.61 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 1.0 * input[6] + -1.0 * input[7] + 0.63 * input[8]) * -10.0 +
      (1.0 * input[0] + 0.81 * input[1] + 1.0 * input[2] + 1.0 * input[3] + 0.0 * input[4] + 0.0 * input[5] + 1.0 * input[6] + 1.0 * input[7] + 0.5 * input[8]) * -0.11023690401398736 +
      (1.0 * input[0] + 0.56 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 1.0 * input[6] + -1.0 * input[7] + 0.63 * input[8]) * -4.906658017131712 +
      (-1.0 * input[0] + 0.75 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 1.0 * input[5] + 0.6 * input[6] + 0.0 * input[7] + 0.56 * input[8]) * -0.0895414555348841 +
      (1.0 * input[0] + 0.67 * input[1] + 0.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.6 * input[6] + 0.0 * input[7] + 0.5 * input[8]) * 10.0 +
      (-0.33 * input[0] + 0.67 * input[1] + 1.0 * input[2] + 1.0 * input[3] + 0.0 * input[4] + 0.0 * input[5] + 0.8 * input[6] + -1.0 * input[7] + 0.5 * input[8]) * 10.0 +
      (0.33 * input[0] + 0.75 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.8 * input[6] + -1.0 * input[7] + 0.44 * input[8]) * 10.0 +
      (-0.33 * input[0] + 0.5 * input[1] + 1.0 * input[2] + 1.0 * input[3] + 0.0 * input[4] + -1.0 * input[5] + 0.8 * input[6] + 0.0 * input[7] + 0.88 * input[8]) * 10.0 +
      (-0.33 * input[0] + 0.78 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 0.0 * input[4] + 1.0 * input[5] + 1.0 * input[6] + 1.0 * input[7] + 0.06 * input[8]) * 10.0 +
      (1.0 * input[0] + 0.69 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.8 * input[6] + -1.0 * input[7] + 0.25 * input[8]) * 10.0 +
      (1.0 * input[0] + 0.67 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 0.0 * input[4] + 0.0 * input[5] + 0.8 * input[6] + 1.0 * input[7] + 0.38 * input[8]) * 10.0 +
      (1.0 * input[0] + 0.67 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.6 * input[6] + -1.0 * input[7] + 0.38 * input[8]) * 10.0 +
      (1.0 * input[0] + 0.69 * input[1] + 1.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + -1.0 * input[5] + 1.0 * input[6] + -1.0 * input[7] + 0.44 * input[8]) * 10.0 +
      (-1.0 * input[0] + 0.67 * input[1] + 0.0 * input[2] + 0.0 * input[3] + 1.0 * input[4] + 0.0 * input[5] + 0.6 * input[6] + 0.0 * input[7] + 0.5 * input[8]) * 10.0;
}
