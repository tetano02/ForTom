import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:progetto_con_lange/main.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: InkWell(
          child: Image.asset("lib/assets/eva01.jpg"),
          onTap: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Flutter Demo Home Page')));
          },
        )
      )
      
    );
  }
}