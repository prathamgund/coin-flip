import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int coinface = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flip a Coin'),
        backgroundColor: Colors.grey,
        ),
        body:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      coinface = Random().nextInt(2) + 1;
                    });
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/coin$coinface.png'),
                    radius: 100.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                  ),
                ElevatedButton(
                  onPressed:() {
                  setState(() {
                    coinface = 0;
                  });
                }, child: const Text('Reset')
                ),
              ],
            ),
          ),
        ),
      );
  }
}


