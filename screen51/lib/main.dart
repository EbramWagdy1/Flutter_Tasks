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
  final Map<String, Color> colorsMap = {
    "Red": Colors.red,
    "Green": Colors.green,
    "Blue": Colors.blue,
    "Yellow": Colors.yellow,
    "Orange": Colors.orange,
    "Purple": Colors.purple,
    "Pink": Colors.pink,
    "Brown": Colors.brown,
    "Cyan": Colors.cyan,
    "Teal": Colors.teal,
  };
  String? selectedColor;
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Choose a Color',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Choose a Color'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: colorsMap[selectedColor] ?? Colors.grey,
                child: const FlutterLogo(size: 300),
              ),
              SizedBox(height: 20),
              DropdownMenu(
                width: 300,
                menuHeight: 300,
                hintText: 'Select a Color',
                dropdownMenuEntries: colorsMap.keys.map((key) {
                  return DropdownMenuEntry<String>(value: key, label: key);
                }).toList(),
                onSelected: (value) {
                  setState(() {
                    selectedColor = value;
                  });
                },
              ),
              SizedBox(height: 50),
              Container(
                width: 100,
                height: 100,
                color: colorsMap[selectedColor] ?? Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Option {
  final String color;

  const Option({required this.color});

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(color: json['color']);
  }
}

class DisplayOption extends StatelessWidget {
  final Option option;

  const DisplayOption({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Text(option.color)]);
  }
}
