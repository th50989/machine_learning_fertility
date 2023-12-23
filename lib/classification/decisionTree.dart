import 'package:fertility_app/provider/model.dart';
import 'package:fertility_app/widget/result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDecisionTree extends StatefulWidget {
  const MyDecisionTree({super.key});

  @override
  State<MyDecisionTree> createState() => MyDecisionTreeState();
}

class MyDecisionTreeState extends State<MyDecisionTree> {
  var ketqua = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Decision Tree')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                var kq = handledata(context, ketqua);
                print(kq);
                if (kq == 1) {
                  Future.delayed(Duration(seconds: 2), () {
                    setState(() {
                      ketqua = 1;
                    });
                    showDialog(
                        context: context, builder: (_) => Result(kq: ketqua));
                  });
                } else {
                  Future.delayed(Duration(seconds: 2), () {
                    setState(() {
                      ketqua = 0;
                    });
                    showDialog(
                        context: context, builder: (_) => Result(kq: ketqua));
                  });
                }
              },
              child: Text(
                'Check your fertility',
                style: TextStyle(fontSize: 30),
              )),
        ),
      ),
    );
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
  var result = score(myData.myGlobalVariable);
  myData.updateResult(result.toString());
  print('My result is ' + result.toString());
  return result;
}

double score(List<double> input) {
  List<double> var0;
  if (input[1] <= 0.6550000011920929) {
    if (input[8] <= 0.8149999976158142) {
      var0 = [0.0, 1.0];
    } else {
      if (input[5] <= 0.0) {
        var0 = [0.5, 0.5];
      } else {
        var0 = [0.0, 1.0];
      }
    }
  } else {
    if (input[3] <= 0.5) {
      if (input[8] <= 0.3149999976158142) {
        if (input[8] <= 0.12499999813735485) {
          if (input[0] <= 0.0) {
            var0 = [1.0, 0.0];
          } else {
            var0 = [0.0, 1.0];
          }
        } else {
          if (input[1] <= 0.7199999988079071) {
            if (input[1] <= 0.6800000071525574) {
              var0 = [0.0, 1.0];
            } else {
              var0 = [1.0, 0.0];
            }
          } else {
            var0 = [0.0, 1.0];
          }
        }
      } else {
        if (input[0] <= 0.0) {
          if (input[2] <= 0.5) {
            if (input[8] <= 0.4699999988079071) {
              var0 = [0.0, 1.0];
            } else {
              var0 = [1.0, 0.0];
            }
          } else {
            var0 = [0.0, 1.0];
          }
        } else {
          if (input[1] <= 0.7800000011920929) {
            var0 = [1.0, 0.0];
          } else {
            var0 = [0.0, 1.0];
          }
        }
      }
    } else {
      if (input[1] <= 0.6800000071525574) {
        if (input[8] <= 0.4050000011920929) {
          var0 = [0.0, 1.0];
        } else {
          var0 = [1.0, 0.0];
        }
      } else {
        var0 = [0.0, 1.0];
      }
    }
  }
  return var0[1];
}
