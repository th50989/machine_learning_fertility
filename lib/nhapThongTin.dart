import 'package:flutter/material.dart';

class MyInputPage extends StatefulWidget {
  const MyInputPage({super.key});

  @override
  State<MyInputPage> createState() => _MyInputPageState();
}

enum Season { spring, summer, autumn, winter }

enum childDiseases { yes, no }

enum accidentOrTrauma { yes, no }

enum surgicalIntervention { yes, no }

enum hightFeverInLastYear { less3month, more3month, no }

enum alcoholConsumption {
  severalAday,
  everyday,
  severalAweek,
  oncesAweek,
  hardlyEverOrNever
}

enum smokingHabit { never, occasional, daily }

class _MyInputPageState extends State<MyInputPage> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Cau1(),
            Divider(),
            Cau2(),
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
            Cau9(),
            Divider(),
            MyHandleSubmitButton()
          ],
        ),
      ),
    );
  }
}

class Cau1 extends StatefulWidget {
  const Cau1({super.key});

  @override
  State<Cau1> createState() => _Cau1State();
}

class _Cau1State extends State<Cau1> {
  @override
  Widget build(BuildContext context) {
    Season? season = Season.spring;
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
                  groupValue: season,
                  onChanged: (Season? value) {
                    setState(() {
                      season = value;
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
                  groupValue: season,
                  onChanged: (Season? value) {
                    setState(() {
                      season = value;
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
                  groupValue: season,
                  onChanged: (Season? value) {
                    setState(() {
                      season = value;
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
                  groupValue: season,
                  onChanged: (Season? value) {
                    setState(() {
                      season = value;
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
  const Cau2({super.key});

  @override
  State<Cau2> createState() => _Cau2State();
}

class _Cau2State extends State<Cau2> {
  TextEditingController ageController = TextEditingController();
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
          child: TextField(
            controller: ageController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Enter age from 18 to 36',
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}

class Cau3 extends StatefulWidget {
  const Cau3({super.key});

  @override
  State<Cau3> createState() => _Cau3State();
}

class _Cau3State extends State<Cau3> {
  childDiseases? cdi = childDiseases.no;
  @override
  Widget build(BuildContext context) {
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
                  groupValue: cdi,
                  onChanged: (childDiseases? value) {
                    setState(() {
                      cdi = value;
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
                  groupValue: cdi,
                  onChanged: (childDiseases? value) {
                    setState(() {
                      cdi = value;
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
  const Cau4({super.key});

  @override
  State<Cau4> createState() => _Cau4State();
}

class _Cau4State extends State<Cau4> {
  accidentOrTrauma? acdot = accidentOrTrauma.no;
  @override
  Widget build(BuildContext context) {
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
                  groupValue: acdot,
                  onChanged: (accidentOrTrauma? value) {
                    setState(() {
                      acdot = value;
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
                  groupValue: acdot,
                  onChanged: (accidentOrTrauma? value) {
                    setState(() {
                      acdot = value;
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
  const Cau5({super.key});

  @override
  State<Cau5> createState() => _Cau5State();
}

class _Cau5State extends State<Cau5> {
  surgicalIntervention? si = surgicalIntervention.no;
  @override
  Widget build(BuildContext context) {
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
                  groupValue: si,
                  onChanged: (surgicalIntervention? value) {
                    setState(() {
                      si = value;
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
                  groupValue: si,
                  onChanged: (surgicalIntervention? value) {
                    setState(() {
                      si = value;
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
  const Cau6({super.key});

  @override
  State<Cau6> createState() => _Cau6State();
}

class _Cau6State extends State<Cau6> {
  hightFeverInLastYear? hily = hightFeverInLastYear.no;
  @override
  Widget build(BuildContext context) {
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
                  groupValue: hily,
                  onChanged: (hightFeverInLastYear? value) {
                    setState(() {
                      hily = value;
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
                  groupValue: hily,
                  onChanged: (hightFeverInLastYear? value) {
                    setState(() {
                      hily = value;
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
            groupValue: hily,
            onChanged: (hightFeverInLastYear? value) {
              setState(() {
                hily = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class Cau7 extends StatefulWidget {
  const Cau7({super.key});

  @override
  State<Cau7> createState() => _Cau7State();
}

class _Cau7State extends State<Cau7> {
  @override
  Widget build(BuildContext context) {
    alcoholConsumption? ac = alcoholConsumption.everyday;
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
                  groupValue: ac,
                  onChanged: (alcoholConsumption? value) {
                    setState(() {
                      ac = value;
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
                  groupValue: ac,
                  onChanged: (alcoholConsumption? value) {
                    setState(() {
                      ac = value;
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
                  groupValue: ac,
                  onChanged: (alcoholConsumption? value) {
                    setState(() {
                      ac = value;
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
                  groupValue: ac,
                  onChanged: (alcoholConsumption? value) {
                    setState(() {
                      ac = value;
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
            groupValue: ac,
            onChanged: (alcoholConsumption? value) {
              setState(() {
                ac = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class Cau8 extends StatefulWidget {
  const Cau8({super.key});

  @override
  State<Cau8> createState() => _Cau8State();
}

class _Cau8State extends State<Cau8> {
  smokingHabit? sh = smokingHabit.never;
  @override
  Widget build(BuildContext context) {
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
                  groupValue: sh,
                  onChanged: (smokingHabit? value) {
                    setState(() {
                      sh = value;
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
                  groupValue: sh,
                  onChanged: (smokingHabit? value) {
                    setState(() {
                      sh = value;
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
            groupValue: sh,
            onChanged: (smokingHabit? value) {
              setState(() {
                sh = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class Cau9 extends StatefulWidget {
  const Cau9({super.key});

  @override
  State<Cau9> createState() => _Cau9State();
}

class _Cau9State extends State<Cau9> {
  TextEditingController hoursSitting = TextEditingController();
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
          child: TextField(
            controller: hoursSitting,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Enter number of hours sitting from 0 to 16',
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}

class MyHandleSubmitButton extends StatefulWidget {
  const MyHandleSubmitButton({super.key});

  @override
  State<MyHandleSubmitButton> createState() => _MyHandleSubmitButtonState();
}

class _MyHandleSubmitButtonState extends State<MyHandleSubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          ElevatedButton(onPressed: () {}, child: Text("Submit information")),
    );
  }
}
