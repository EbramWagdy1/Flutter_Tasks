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
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Logo',
            style: TextStyle(
              color: Colors.yellow[800],
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: Center(
          child: FlutterLogo(
            size: 200,
            style: FlutterLogoStyle.stacked,),
         ),
      ),
    );
  }
}
