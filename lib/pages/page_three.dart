import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List<String>;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text('Page Three :o'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, '/second');
                },
                child: const Text("Back to Page Two"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', ModalRoute.withName('/'),
                    arguments: args);
              },
              child: const Text('Back to Home Page'),
            ),
            ElevatedButton(
              onPressed: () {
                args.clear();
              },
              child: const Text("Remove All"),
            ),
          ],
        ));
  }
}
