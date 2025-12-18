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
            'Icons',
            style: TextStyle(
              color: Colors.yellow[800],
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: Column(
          mainAxisAlignment: .center,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    String.fromCharCode(0xe3af),
                    style: TextStyle(
                      fontFamily: 'MaterialIcons',
                      fontSize: 200,
                      color: Colors.black,
                      backgroundColor: Colors.yellow[800],
                    ),
                  ),
                  Text(
                    'Break Time❤️',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
