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
      title: 'Flutterapp',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('Circle avatar',
          style: TextStyle(
            color: Colors.yellow[700],
          ),),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Center(child: 
        CircleAvatar(
          radius: 50,
          backgroundColor: const Color.fromARGB(255, 107, 103, 102),
          child: Icon(
            Icons.save,
            size: 50,
            color: Colors.white,
          ),
         ),),),);
  }
}