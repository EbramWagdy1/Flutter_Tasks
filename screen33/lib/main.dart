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
                width: 210,
                height: 210,
               color:  const Color.fromARGB(255, 81, 119, 184)
              ),
            ),
             Center(
              child: Container(
                width: 180,
                height: 180,
               color:  const Color.fromARGB(255, 98, 119, 155)
              ),
            ),
             Center(
              child: Container(
                width: 150,
                height: 150,
               color:  const Color.fromARGB(255, 255, 255, 255)
              ),
            ),
              Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.cover, 
                            ),)
              ),
            ),
          
          ],
        ),
      )
    );
  }
}
