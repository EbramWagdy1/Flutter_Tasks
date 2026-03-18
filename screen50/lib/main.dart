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
  var country = [
    {"title": "India", "icon": "flag"},
    {"title": "USA", "icon": "flag"},
    {"title": "UK", "icon": "flag"},
    {"title": "Canada", "icon": "flag"},
    {"title": "Germany", "icon": "flag"},
    {"title": "France", "icon": "flag"},
    {"title": "Japan", "icon": "flag"},
    {"title": "China", "icon": "flag"},
    {"title": "Australia", "icon": "flag"},
    {"title": "Brazil", "icon": "flag"},
    {"title": "Italy", "icon": "flag"},
    {"title": "Spain", "icon": "flag"},
    {"title": "Russia", "icon": "flag"},
    {"title": "South Korea", "icon": "flag"},
    {"title": "Egypt", "icon": "flag"},
  ];
  String? selectedCountry;
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
              DropdownMenu(
                width: 300,
                menuHeight: 300,
                hintText: 'Select a Country',
                dropdownMenuEntries: country.map((option) {
                  return DropdownMenuEntry<String>(
                    value: option['title'].toString(),
                    label: option['title'].toString(),
                    leadingIcon: Icon(Icons.flag),
                  );
                }).toList(),
                onSelected: (value) {
                  setState(() {
                    selectedCountry = value;
                  });
                },
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Destination Country is: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    selectedCountry ?? 'None',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  ),
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
