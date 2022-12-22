import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List<String>;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Page Two :D'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Push to get Back"),
          )),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/third', arguments: args);
            },
            child: const Text('Push to Page Three'),
          ),
          ElevatedButton(
            onPressed: () {
              args.addAll(["salt", "more salt", "water"]);
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }
}
