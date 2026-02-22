import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Stack"),
        backgroundColor: Colors.blueAccent,
      ),
      body:Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 250,
                height: 250,
               color:  Colors.blueAccent
              ),
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
               color:  const Color.fromARGB(255, 81, 119, 184)
              ),
            ),
            Center(
              child: Container(
                width: 150,
                height: 150,
               color:  const Color.fromARGB(255, 108, 121, 145)
              ),
            ),Center(
              child: Container(
                width: 100,
                height: 100,
               color:  const Color.fromARGB(255, 143, 153, 170)
              ),
            ),Center(
              child: Container(
                width: 50,
                height: 50,
               color:  const Color.fromARGB(255, 0, 0, 0)
              ),
            ),
          ],
        ),
      )
    );
  }
}
