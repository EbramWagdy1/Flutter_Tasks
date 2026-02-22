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
      home:  ScoreScreen(),
    );
  }
}

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int score = 0;

  void increaseScore() {
    setState(() {
      score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Floating Action Button Extended'),backgroundColor: Colors.blueAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png') ,
             SizedBox(height: 40),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                children: [
                   TextSpan(text: 'Student Score ', style: TextStyle(color: Colors.orange)),
                  TextSpan(text: '$score', style: const TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: increaseScore,
        backgroundColor:  Color(0xFF262626),
        foregroundColor: Colors.white,
        icon:  Icon(Icons.add, color: Colors.orange),
        label:  Text('Increase Score'),
      ),
    );
  }
}