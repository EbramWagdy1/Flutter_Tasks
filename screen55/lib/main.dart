import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
 const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final Map<String, bool> courses = {
    'Algorithms': false,
    'Software Engineering': false,
    'Logic Design': false,
    'Machine Learning': false,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('check Box'),
        ),
        body: 
        ListView(
          children: courses.keys.map((String key) {
            return Card(
              child: CheckboxListTile(
                title: Text(key),
                value: courses[key],
                onChanged: (bool? value) {
                  setState(() {
                    courses[key] = value!;
                  });
                },
              ),
            );
          }).toList(),
        )));
  }
}


