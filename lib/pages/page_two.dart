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
              onPressed: () => {
                    Navigator.pushNamed(context, '/third'),
                  },
              child: const Text('Push to Page Three'))
        ],
      ),
    );
  }
}
