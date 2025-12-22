import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Image Asset", style: TextStyle(color: Colors.yellow)),
          centerTitle: true,
        ),
        body: Center(child: Image.asset('assets/images/logo.png')),
      ),
    );
  }
}
