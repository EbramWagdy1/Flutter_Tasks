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
  var programmingCourses = [
  {
    "title": "Flutter Development",
    "icon": Icons.flutter_dash,
  },
  {
    "title": "Python Programming",
    "icon": Icons.code, 
  },
  {
    "title": "Java Development",
    "icon": Icons.coffee, 
  },
  {
    "title": "C++ Programming",
    "icon": Icons.memory,
  },
  {
    "title": "JavaScript",
    "icon": Icons.javascript,
  },
];
  String? selectedprogrammingCourse;
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Choose a Country',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Choose a Country'), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 300),
              SizedBox(height: 20),
              DropdownButton<String>(
                value: selectedprogrammingCourse,
                hint: Text('Select a Programming Course'),
                items: programmingCourses.map((course) {
                  return DropdownMenuItem<String>(
                    value: course['title'] as String,
                    child: Row(
                      children: [
                        Icon(course['icon'] as IconData),
                        SizedBox(width: 8),
                        Text(course['title'] as String),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedprogrammingCourse = value;
                  });
                },
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Course is: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                Icon(programmingCourses.firstWhere((course) => course['title'] == selectedprogrammingCourse)['icon'] as IconData),
                  SizedBox(width: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Option {
  final String tittle;
  final IconData icon;

  const Option({required this.tittle, required this.icon});

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      tittle: json['tittle'],
      icon: IconData(json['icon'], fontFamily: 'MaterialIcons'),
    );
  }
}

class DisplayOption extends StatelessWidget {
  final Option option;

  const DisplayOption({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(option.icon), SizedBox(width: 8), Text(option.tittle)],
    );
  }
}
