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
  String? val;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Popup Menu Button '),
          actions: [
            PopupMenuButton<String>(
            itemBuilder: (context) => [
              const PopupMenuItem(value: '1 Stars', child: Text('1 Stars')),
              const PopupMenuItem(value: '2 Stars', child: Text('2 Stars')),
              const PopupMenuItem(value: '3 Stars', child: Text('3 Stars')),
              const PopupMenuItem(value: '4 Stars', child: Text('4 Stars')),
              const PopupMenuItem(value: '5 Stars', child: Text('5 Stars')),
            ],
            onSelected: (value) {
              setState(() {
                val = value;
              });
            },
          ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 200),
              const SizedBox(height: 20),
              Text('Your Rating Is : $val', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
