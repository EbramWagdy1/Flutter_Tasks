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
  int? val = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Radio Button')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'please let us Your Gender : ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                      ),
                      Text('Male'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                      ),
                      Text('Female'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                val == 1 ? "Hi Gentleman" : "Hi Ladies",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
