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
        title: const Text("Geuster Double Tap & Long Press"),
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
                onDoubleTap: () {
                 setState(() {
                    text = 'you make Double Tap !';
                  });
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Double Tap',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                 onLongPress: () {
                  setState(() {
                    text = 'You Make Long Press';
                  });
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      'Long Press',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:24,
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
            text ?? 'You Make !',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
        
      ),
    

    );
  }
}
