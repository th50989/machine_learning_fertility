import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int kq;

  const Result({super.key, required this.kq});

  @override
  Widget build(BuildContext context) {
    if (kq == 0) {
      return AlertDialog(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'))
        ],
        title: Text('Predicted Result'),
        content: Text('Your fertility seems not normal'),
      );
    }

    return AlertDialog(
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back'))
      ],
      title: Text('Predicted Result'),
      content: Text('Your fertility seems normal'),
    );
  }
}
