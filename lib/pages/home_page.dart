import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Center(child: ElevatedButton(
        onPressed: (){
         Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
             builder: (context) => const SecondPage(),
          ),
          );
        },
        child: Text("Tela 2")
      ))
    );
    );
  }
}
