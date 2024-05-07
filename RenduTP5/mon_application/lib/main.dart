import 'package:flutter/material.dart';

void main() {
  runApp(const MaClasse());
}

class MaClasse extends StatelessWidget {
  const MaClasse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Première Application Flutter'),
        ), // AppBar
        body: Center(
          child: Text('Hello world'),
        ), // Center
      ), // Scaffold
    );
  }
}

class MaClasse2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Deuxième Application Flutter'),
        ), // AppBar
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 8,
              ), // Border.all
              borderRadius: BorderRadius.circular(12),
            ), // BoxDecoration
            child: Text(
              'Hello world',
              style: TextStyle(
                color: Colors.deepPurpleAccent,
              ),
            ), // Text
          ), // Container
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}

class MaClasse3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Troisième Application Flutter'),
        ), // AppBar
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 350,
                child: Image.asset('images/6.jpg', fit: BoxFit.fill),
              ), // Container
              const Text('Hello World'),
            ], // Children
          ), // Column
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}