import 'package:flutter/material.dart';
import 'Screen2.dart';

void main() {
  runApp(MaterialApp(
    home: ScreenOne(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.blue),
        home: ScreenOne(),
        routes: {'/Secondpage': (context) => ScreenTwo()});
  }
}
