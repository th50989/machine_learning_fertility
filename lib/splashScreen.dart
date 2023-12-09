import 'package:fertility_app/main.dart';
import 'package:fertility_app/nhapThongTin.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/first.jpg'),
                  fit: BoxFit.cover),
            ),
            child: ElevatedButton(
              child: Text('Start Now'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
            )));
  }
}
