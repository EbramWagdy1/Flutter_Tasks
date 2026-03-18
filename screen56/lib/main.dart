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
 List<bool> isChecked = [false, false];
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
          title: const Text('check Box List Tile'),
        ),
        body: 
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              CheckboxListTile(
                title: Text('Running at 6:00 AM'),
                subtitle: Text('Running after 12 hours'),
                secondary: Icon(Icons.alarm),
                controlAffinity: ListTileControlAffinity.trailing,
                value: isChecked[0],
                onChanged: (bool? value) {
                  setState(() {
                    isChecked[0] = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Running at 5:00 PM'),
                subtitle: Text('Running after 12 hours'),
                secondary: Icon(Icons.alarm),
                controlAffinity: ListTileControlAffinity.trailing,
                value: isChecked[1],
                onChanged: (bool? value) {
                  setState(() {
                    isChecked[1] = value ?? false;
                  });
                },
              ),
            ],
          ),
        )));
  }
}


