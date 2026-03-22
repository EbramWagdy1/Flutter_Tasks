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
       useMaterial3: false,
      ),
      home:Home(),
    );
  }
}
 List<String> animals = [
    'Cat',
    'Dog',
    'Elephant',
    'Lion',
    'Tiger',
    'Giraffe',
    'Monkey',
    'Zebra',
    'Bear',
    'Wolf',
  ];
class Home extends StatefulWidget {
  const Home({super.key});
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF1C1C14),
        title: const Text(
          'List Wheel',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: ListWheelScrollView(itemExtent: 100,
      offAxisFraction: 0.0,
      diameterRatio: 3,
      squeeze: 1,
      perspective:0.01,
      physics: FixedExtentScrollPhysics(),
children:  animals.map((animal) {
          return Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                animal,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          );
        }).toList(),),
    );
  }
}
