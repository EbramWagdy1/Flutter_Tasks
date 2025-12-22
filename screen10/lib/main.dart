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
          backgroundColor: Colors.brown,
          title: Text(
            "Network Image",
            style: TextStyle(
              color: Colors.yellow[600],
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Image.network("https://i.ibb.co/tDVbCCW/simplife-logo1.png"),
        ),
      ),
    );
  }
}
