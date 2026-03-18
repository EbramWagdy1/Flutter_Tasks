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
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Choose Right Answer'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1+2+4= ?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow[900],
                  fontWeight: FontWeight.bold,
                ),
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
                      Text('4'),
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
                      Text('5'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 3,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                      ),
                      Text('6'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 4,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                      ),
                      Text('7'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                val == 1 || val == 2 || val == 3 ? "This is Not the Right Answer" : "Congratulations! This is the Right Answer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
