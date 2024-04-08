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

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  // final result

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naviagation and routing'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'First Page',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Secondpage');
              },
              child: Text('next page / To screen Two'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ScreenTwo(),
                        settings: const RouteSettings(
                            arguments: 'Some Text Data From screen one')));
              },
            )
          ],
        ),
      ),
    );
  }
}
