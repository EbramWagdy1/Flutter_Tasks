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
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}

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
         backgroundColor: const Color(0xFF1C1C14),
        centerTitle: true,
        title: const Text('Snack Bar', style: TextStyle(color: Colors.amber)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
               ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                    content: Text('This is a Snack Bar!'),
                    backgroundColor: Color(0xFF1C1C14),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    action: SnackBarAction(
                      label: 'close',
                      textColor: Colors.amber,
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                  )),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1C1C14),
                foregroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('click to Display the snack bar', style: TextStyle(color: Colors.amber)),
                ],
            ),
          ),
        ),
    ]), 
    );
  }
}
