import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  List<String>? listofthings;
  @override
  void initState() {
    super.initState();
    listofthings = [];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    listofthings =
        (ModalRoute.of(context)?.settings.arguments as List<String>?) ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One :)'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            heightFactor: 5.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/second',
                    arguments: listofthings);
              },
              child: const Text('Push to next Page'),
            ),
          ),
        ],
      ),
    );
  }
}
