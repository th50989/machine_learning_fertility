import 'package:fertility_app/cubit/cubit/nhap_thong_tin_cubit.dart';
import 'package:fertility_app/provider/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyInputPage extends StatefulWidget {
  const MyInputPage({super.key});

  @override
  State<MyInputPage> createState() => MyInputPageState();
}

class MyInputPageState extends State<MyInputPage> {
  TextEditingController cau9Controller = TextEditingController();
  TextEditingController cau2Controller = TextEditingController();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  List<double> data = List<double>.filled(9, 0);

  //
  //Season? season;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Cau1(),
              Divider(),
              Cau2(
                controller: cau2Controller,
                formKey: formKey2,
              ),
              Divider(),
              Cau3(),
              Divider(),
              Cau4(),
              Divider(),
              Cau5(),
              Divider(),
              Cau6(),
              Divider(),
              Cau7(),
              Divider(),
              Cau8(),
              Divider(),
              Cau9(controller: cau9Controller, formKey: formKey1),
              Divider(),
              MyHandleSubmitButton(
                data: data,
                formKey2: formKey2,
                formKey: formKey1,
                controller_cau9: cau9Controller,
                controller_cau2: cau2Controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Cau1 extends StatefulWidget {
  Cau1({super.key});
  Season? season = Season.spring;
  @override
  State<Cau1> createState() => Cau1State();
}

class Cau1State extends State<Cau1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyData myData = Provider.of<MyData>(context, listen: false);
    // Season? season = Season.spring;
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [Text("What is the season now ?")],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Spring'),
                leading: Radio<Season>(
                  value: Season.spring,
                  groupValue: widget.season,
                  onChanged: (Season? value) {
                    setState(() {
                      widget.season = value;

                      myData.season = value;
                      // a.season = widget.season;
                      print('Mydata' + myData.season.toString());
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('Summer'),
                leading: Radio<Season>(
                  value: Season.summer,
                  groupValue: widget.season,
                  onChanged: (Season? value) {
                    setState(() {
                      widget.season = value;
                      myData.season = value;
                      // a.season = widget.season;
                      print('Mydata' + myData.season.toString());
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Autumn'),
                leading: Radio<Season>(
                  value: Season.autumn,
                  groupValue: widget.season,
                  onChanged: (Season? value) {
                    setState(() {
                      widget.season = value;
                      myData.season = value;
                      // a.season = widget.season;
                      print('Mydata' + myData.season.toString());
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('Winter'),
                leading: Radio<Season>(
                  value: Season.winter,
                  groupValue: widget.season,
                  onChanged: (Season? value) {
                    setState(() {
                      widget.season = value;
                      myData.season = value;
                      // a.season = widget.season;
                      print('Mydata' + myData.season.toString());
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Cau2 extends StatefulWidget {
  Cau2({super.key, required this.controller, this.formKey});
  final TextEditingController controller;
  final formKey;
  @override
  State<Cau2> createState() => Cau2State();
}

class Cau2State extends State<Cau2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [Text("What is your age ?")],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Form(
            key: widget.formKey,
            child: TextFormField(
              onChanged: (value) => print(value.runtimeType),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please input';
                }
                if (int.parse(value) < 18 || int.parse(value) > 36) {
                  return 'Please enter correct number from 18 to 36 only';
                }
                return null;
              },
              controller: widget.controller,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Enter age from 18 to 36',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ),
      ],
    );
  }
}

class Cau3 extends StatefulWidget {
  Cau3({super.key});
  childDiseases? cdi = childDiseases.no;
  @override
  State<Cau3> createState() => Cau3State();
}

class Cau3State extends State<Cau3> {
  @override
  Widget build(BuildContext context) {
    MyData myData = Provider.of<MyData>(context, listen: false);
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [Text("Do you have any childish diseases  ?")],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Yes'),
                leading: Radio<childDiseases>(
                  value: childDiseases.yes,
                  groupValue: widget.cdi,
                  onChanged: (childDiseases? value) {
                    setState(() {
                      widget.cdi = value;
                      myData.cdi = value;
                      print(myData.cdi);
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('No'),
                leading: Radio<childDiseases>(
                  value: childDiseases.no,
                  groupValue: widget.cdi,
                  onChanged: (childDiseases? value) {
                    setState(() {
                      widget.cdi = value;
                      myData.cdi = value;
                      print(myData.cdi);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Cau4 extends StatefulWidget {
  Cau4({super.key});
  accidentOrTrauma? acdot = accidentOrTrauma.no;
  @override
  State<Cau4> createState() => Cau4State();
}

class Cau4State extends State<Cau4> {
  @override
  Widget build(BuildContext context) {
    MyData myData = Provider.of<MyData>(context, listen: false);
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [Text("Did you have any accident or serious trauma ?")],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Yes'),
                leading: Radio<accidentOrTrauma>(
                  value: accidentOrTrauma.yes,
                  groupValue: widget.acdot,
                  onChanged: (accidentOrTrauma? value) {
                    setState(() {
                      widget.acdot = value;
                      myData.aot = value;
                      print(myData.aot);
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('No'),
                leading: Radio<accidentOrTrauma>(
                  value: accidentOrTrauma.no,
                  groupValue: widget.acdot,
                  onChanged: (accidentOrTrauma? value) {
                    setState(() {
                      widget.acdot = value;
                      myData.aot = value;
                      print(myData.aot);
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Cau5 extends StatefulWidget {
  Cau5({super.key});
  surgicalIntervention? si = surgicalIntervention.no;
  @override
  State<Cau5> createState() => Cau5State();
}

class Cau5State extends State<Cau5> {
  @override
  Widget build(BuildContext context) {
    MyData myData = Provider.of<MyData>(context, listen: false);
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [Text("Did you have any surgical intervention ?")],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Yes'),
                leading: Radio<surgicalIntervention>(
                  value: surgicalIntervention.yes,
                  groupValue: widget.si,
                  onChanged: (surgicalIntervention? value) {
                    setState(() {
                      myData.si = value;
                      widget.si = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('No'),
                leading: Radio<surgicalIntervention>(
                  value: surgicalIntervention.no,
                  groupValue: widget.si,
                  onChanged: (surgicalIntervention? value) {
                    setState(() {
                      widget.si = value;
                      myData.si = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Cau6 extends StatefulWidget {
  Cau6({super.key});
  hightFeverInLastYear? hily = hightFeverInLastYear.no;
  @override
  State<Cau6> createState() => Cau6State();
}

class Cau6State extends State<Cau6> {
  @override
  Widget build(BuildContext context) {
    MyData myData = Provider.of<MyData>(context, listen: false);
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [Text("Did you have any highest fever last year ?")],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Less than 3 month'),
                leading: Radio<hightFeverInLastYear>(
                  value: hightFeverInLastYear.less3month,
                  groupValue: widget.hily,
                  onChanged: (hightFeverInLastYear? value) {
                    setState(() {
                      widget.hily = value;
                      myData.hfily = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('No'),
                leading: Radio<hightFeverInLastYear>(
                  value: hightFeverInLastYear.no,
                  groupValue: widget.hily,
                  onChanged: (hightFeverInLastYear? value) {
                    setState(() {
                      widget.hily = value;
                      myData.hfily = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        ListTile(
          title: const Text('More than 3 month'),
          leading: Radio<hightFeverInLastYear>(
            value: hightFeverInLastYear.more3month,
            groupValue: widget.hily,
            onChanged: (hightFeverInLastYear? value) {
              setState(() {
                widget.hily = value;
                myData.hfily = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class Cau7 extends StatefulWidget {
  Cau7({super.key});
  alcoholConsumption? ac = alcoholConsumption.severalAday;
  @override
  State<Cau7> createState() => Cau7State();
}

class Cau7State extends State<Cau7> {
  @override
  Widget build(BuildContext context) {
    MyData myData = Provider.of<MyData>(context, listen: false);
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Text("What is your Frequency of alcohol consumption ?")
              ],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Several times a day'),
                leading: Radio<alcoholConsumption>(
                  value: alcoholConsumption.severalAday,
                  groupValue: widget.ac,
                  onChanged: (alcoholConsumption? value) {
                    setState(() {
                      widget.ac = value;
                      myData.alcon = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('Everyday'),
                leading: Radio<alcoholConsumption>(
                  value: alcoholConsumption.everyday,
                  groupValue: widget.ac,
                  onChanged: (alcoholConsumption? value) {
                    setState(() {
                      widget.ac = value;
                      myData.alcon = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Onces a week'),
                leading: Radio<alcoholConsumption>(
                  value: alcoholConsumption.oncesAweek,
                  groupValue: widget.ac,
                  onChanged: (alcoholConsumption? value) {
                    setState(() {
                      widget.ac = value;
                      myData.alcon = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('Several a week'),
                leading: Radio<alcoholConsumption>(
                  value: alcoholConsumption.severalAweek,
                  groupValue: widget.ac,
                  onChanged: (alcoholConsumption? value) {
                    setState(() {
                      widget.ac = value;
                      myData.alcon = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        ListTile(
          title: const Text('Hardly ever or never'),
          leading: Radio<alcoholConsumption>(
            value: alcoholConsumption.hardlyEverOrNever,
            groupValue: widget.ac,
            onChanged: (alcoholConsumption? value) {
              setState(() {
                widget.ac = value;
                myData.alcon = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class Cau8 extends StatefulWidget {
  Cau8({super.key});
  smokingHabit? sh = smokingHabit.never;
  @override
  State<Cau8> createState() => Cau8State();
}

class Cau8State extends State<Cau8> {
  @override
  Widget build(BuildContext context) {
    MyData myData = Provider.of<MyData>(context, listen: false);
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [Text("What is your smoking habbit ?")],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Occasionaly'),
                leading: Radio<smokingHabit>(
                  value: smokingHabit.occasional,
                  groupValue: widget.sh,
                  onChanged: (smokingHabit? value) {
                    setState(() {
                      widget.sh = value;
                      myData.smk = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('Daily'),
                leading: Radio<smokingHabit>(
                  value: smokingHabit.daily,
                  groupValue: widget.sh,
                  onChanged: (smokingHabit? value) {
                    setState(() {
                      widget.sh = value;
                      myData.smk = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        ListTile(
          title: const Text('Never'),
          leading: Radio<smokingHabit>(
            value: smokingHabit.never,
            groupValue: widget.sh,
            onChanged: (smokingHabit? value) {
              setState(() {
                widget.sh = value;
                myData.smk = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class Cau9 extends StatefulWidget {
  Cau9({super.key, required this.controller, this.formKey});
  final TextEditingController controller;
  final formKey;
  // TextEditingController hoursSitting = TextEditingController();
  @override
  State<Cau9> createState() => Cau9State();
}

class Cau9State extends State<Cau9> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: [Text("How many hours you sit per day ?")],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Form(
            key: widget.formKey,
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please input';
                }
                if (int.parse(value!) < 0 || int.parse(value) > 16) {
                  return 'Please enter correct number from 0 to 16 only ';
                }
                return null;
              },
              controller: widget.controller,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Enter number of hours sitting from 0 to 16',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ),
      ],
    );
  }
}

class MyHandleSubmitButton extends StatefulWidget {
  MyHandleSubmitButton({
    super.key,
    required this.controller_cau2,
    required this.controller_cau9,
    this.formKey,
    this.formKey2,
    this.data,
  });
  //Season? season;
  final TextEditingController controller_cau2;
  final TextEditingController controller_cau9;
  final formKey;
  final formKey2;
  final data;
  @override
  State<MyHandleSubmitButton> createState() => MyHandleSubmitButtonState();
}

class MyHandleSubmitButtonState extends State<MyHandleSubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: ElevatedButton(
            onPressed: () => _showDialog(context),
            child: Text("Submit information")),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    check(context);
  }

  void check(BuildContext context) {
    // print(Cau9(
    //   controller: widget.controller_cau9,
    //   formKey: widget.formKey,
    // ).formKey.currentState);

    // print(Cau2(
    //   controller: widget.controller_cau2,
    //   formKey: widget.formKey2,
    // ).formKey.currentState);
    // print(Cau9State().formKey1.currentState);
    //check 2 cai input neu thanh cong thi popup
    if (Cau9(
      controller: widget.controller_cau9,
      formKey: widget.formKey,
    ).formKey.currentState.validate()) {
      if (Cau2(controller: widget.controller_cau2, formKey: widget.formKey2)
          .formKey
          .currentState
          .validate()) {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) {
            // Show the first popup
            return const AlertDialog(
              title: Text('Saving information...'),
              content: Image(image: AssetImage("./assets/images/waiting.gif")),
            );
          },
        );

        handledata();
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pop(); // Close the first popup
          _showSecondDialog(context); // Show the second popup
        });
      }
    }
  }

  void handledata() {
    double cau1 = 0.0;
    double cau2 = 0.0;
    double cau3 = 0.0;
    double cau4 = 0.0;
    double cau5 = 0.0;
    double cau6 = 0.0;
    double cau7 = 0.0;
    double cau8 = 0.0;
    double cau9 = 0.0;
    // print(widget.season);
    MyData myData = Provider.of<MyData>(context, listen: false);
    switch (myData.season) {
      case Season.autumn:
        cau1 = 1;
      case Season.summer:
        cau1 = 0.33;
      // TODO: Handle this case.
      case Season.spring:
        cau1 = -0.33;
      case Season.winter:
        cau1 = -1.0;
      // TODO: Handle this case.
      case null:
        cau1 = 4.0;
    }
    cau2 = chuyendoiso(double.parse(widget.controller_cau2.text));
    cau9 = chuyendosocau9(double.parse(widget.controller_cau9.text));
    switch (myData.cdi) {
      case null:
      case childDiseases.yes:
        cau2 = 0;
      case childDiseases.no:
        cau2 = 1;
      // TODO: Handle this case.
    }
    switch (myData.aot) {
      case null:
      case accidentOrTrauma.no:
        cau4 = 1;
      // TODO: Handle this case.
      case accidentOrTrauma.yes:
        cau4 = 0;
      // TODO: Handle this case.
    }

    switch (myData.si) {
      case null:
      case surgicalIntervention.no:
        cau5 = 1;
      // TODO: Handle this case.
      case surgicalIntervention.yes:
        cau5 = 0;
      // TODO: Handle this case.
    }
    switch (myData.hfily) {
      case null:
      case hightFeverInLastYear.more3month:
        cau6 = 0;
      // TODO: Handle this case.
      case hightFeverInLastYear.no:
        cau6 = 1;
      // TODO: Handle this case.
      case hightFeverInLastYear.less3month:
        cau6 = -1;
      // TODO: Handle this case.
    }
    switch (myData.alcon) {
      case null:
      case alcoholConsumption.everyday:
        // TODO: Handle this case.

        cau7 = 0.25;
      case alcoholConsumption.hardlyEverOrNever:
        cau7 = 1;
      // TODO: Handle this case.
      case alcoholConsumption.oncesAweek:
        cau7 = 0.75;
      // TODO: Handle this case.
      case alcoholConsumption.severalAday:
        cau7 = 0.0;
      // TODO: Handle this case.
      case alcoholConsumption.severalAweek:
        cau7 = 0.5;

      // TODO: Handle this case.
    }

    switch (myData.smk) {
      case null:
      case smokingHabit.never:
        cau8 = -1;
      // TODO: Handle this case.
      case smokingHabit.occasional:
        cau8 = 0;
      // TODO: Handle this case.
      // TODO: Handle this case.
      case smokingHabit.daily:
        cau8 = 1;
      // TODO: Handle this case.
    }
    widget.data[0] = cau1;
    widget.data[1] = cau2;
    widget.data[2] = cau3;
    widget.data[3] = cau4;
    widget.data[4] = cau5;
    widget.data[5] = cau6;
    widget.data[6] = cau7;
    widget.data[7] = cau8;
    widget.data[8] = cau9;
    print(widget.data);
    //myData = Provider.of<MyData>(context, listen: false);
    myData.updateGlobalVariable(widget.data);
  }

  void _showSecondDialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        // Show the second popup
        return AlertDialog(
          title: Text('Information Saved successfully'),
          content: Text('Now you can move to diagnose page'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  double chuyendoiso(double n) {
    var min_age = 18;
    var max_age = 36;
    double normalized_value = (n - min_age) / (max_age - min_age);
    return normalized_value;
  }

  double chuyendosocau9(double n) {
    var min_hour = 0;
    var max_hour = 16;
    double normalized_value = (n - min_hour) / (max_hour - min_hour);
    if (normalized_value < 0) {
      normalized_value == 0;
    }
    if (normalized_value > 1) {
      normalized_value == 1;
    }
    return normalized_value;
  }
}
