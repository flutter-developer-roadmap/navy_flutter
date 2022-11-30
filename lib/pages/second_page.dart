import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: ElevatedButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text("Tela 1")
      ))
    );
  }
}
