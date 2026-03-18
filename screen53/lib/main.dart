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
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Popup Menu Button '),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 200),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Text( 'choose Your Option: $val', style: TextStyle(fontSize: 20),),
                      PopupMenuButton<String> (
                  icon: const Icon(Icons.menu),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    const PopupMenuItem(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                    const PopupMenuItem(
                      value: 'Option 3',
                      child: Text('Option 3'),
                    ),
                    const PopupMenuItem(
                      value: 'Option 4',
                      child: Text('Option 4'),
                    ),
                    const PopupMenuItem(
                      value: 'Option 5',
                      child: Text('Option 5'),
                    ),
                    
                  ],
                  onSelected: (value) {
                    setState(() {
                      val = value;
                    });
                  },
                ),
                  ],
                )
              ],
            ),
          ),),
     ); 
  } }
