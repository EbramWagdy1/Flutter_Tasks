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
            'Texts',
            style: TextStyle(
              color: Colors.yellow[600],
              fontWeight: FontWeight.w300,
              fontSize: 40,
            ),
          ),
          centerTitle: true,
         
          backgroundColor: Colors.grey[900],

        ),
        body:Center(
          child: Text(
            'Simplife EG',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 50,
              decoration: TextDecoration.underline,
              backgroundColor: Colors.yellow[800],
            ),
          ),
          
        ),
      ),
    );
  }
}
