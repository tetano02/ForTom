// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:progetto_con_lange/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Color> colorsList = [];
  int indexOfColor = 0;

  @override 
  void initState(){  //Parte allo stato iniziale, flutter run (in realtà ogni volta che viene aggiunto all'albero->ogni volta che viene avviata l'app)
    colorsList.add(Colors.yellow);
    colorsList.add(Colors.redAccent);
    colorsList.add(Colors.amber);
    colorsList.add(Colors.blueAccent);
  }

  void changeColor(){
    indexOfColor++;
    if(indexOfColor == colorsList.length){
      indexOfColor = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
              Card(
                color: colorsList[indexOfColor],
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: InkWell(
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Center(child: Text('Ciao')),
                  ),
                  onTap: (){
                    changeColor();
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const FirstPage()));
                  },
                )
              )
          ],
        ),
      ), 
    );
  }
}
