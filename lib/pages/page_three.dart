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
              onPressed: () => {Navigator.pop(context, '/')},
              child: const Text('Back to Home Page'),
            )
          ],
        ));
  }
}
