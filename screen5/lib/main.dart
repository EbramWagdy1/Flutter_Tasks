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
            'Rich Text',
            style: TextStyle(
              color: Colors.yellow[800],
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
         
          backgroundColor: Colors.grey[900],

        ),
        body:Center(
          child: RichText(
            text:TextSpan(
              text: 'simplife ',
              style: TextStyle(
                color: Colors.yellow[800],
                fontSize: 30,
              ),
              children:[
                TextSpan(
                  text: 'EG ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: 'Company ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}
