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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:  Text(
            'Flutter APP',
            style: TextStyle(
              color: Colors.yellow[600],
              fontWeight: FontWeight.w300,
              fontSize: 40,
            ),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
            size: 40,
          ),
          backgroundColor: Colors.grey[900],

        ),
        body:Center(
          child: Text(
            'New Flutter App With\n'
            'Leading in AppBar❤️ ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
          
        ),
      ),
    );
  }
}
