import 'package:flutter/material.dart';
import 'main.dart';
import 'Screen1.dart';

class ScreenTwo extends StatelessWidget {
  final String data;
  ScreenTwo({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Naviagation and routing'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: Column(
        children: [
          Text(
            'Second Page',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              child: Text('Back'))
        ],
      ),
    );
  }
}
