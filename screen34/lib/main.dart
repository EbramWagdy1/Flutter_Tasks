import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Geuster Tap"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                 setState(() {
                    text = 'I am feeling Bad !';
                  });
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Bad',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    text = 'I am feeling Good !';
                  });
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Good',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                 setState(() {
                    text = 'I am feeling Well !';
                  });
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Well',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                setState(() {
                    text = 'I am feeling Excellent !';
                  });
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Excellent',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Text(
            text ?? 'Tap a button',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
        
      ),
    

    );
  }
}
