import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      title: 'Flutter Demo',
      home:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text('ListView '),
        ),

        body: ListView(
          children: List.generate(20,(index) => ListTile(
              leading: SizedBox(
                  width: 150,
                  height: 150,
                child: Image(image: AssetImage('assets/images/post.jpg'), fit: BoxFit.cover)),
              title: Text('Item ${index + 1}'),
              subtitle:  Text('Sub'),
            ),
          ),
        ),
      ),
    );
  }
}

