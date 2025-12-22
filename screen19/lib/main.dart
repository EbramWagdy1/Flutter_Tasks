import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: Text('Gradiet' ,style: TextStyle(color: Colors.yellow.shade700)),
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(80),
                bottomLeft: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.blueGrey,
                  Colors.green,
                  Colors.green.shade200,
                  
                ],
             
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            
                ),
        ),
    ),);
  }
}

