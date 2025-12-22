import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                transform: Matrix4.rotationZ( 0.5),
                width: 150,
                height: 150,
                color: Colors.blueGrey,
                child: Center(
                  child: Text('Box 1', style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  
                  ),),
                ),
              ),
              SizedBox(width: 20),
              Container(
                transform: Matrix4.rotationZ( -0.3),
                width: 150,
                height: 150,
                color: Colors.blueGrey,
                child: Center(
                  child: Text('Box 2', style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  
                  ),),
                ),
              ),
            ],
          ),
        )       
      ),
    );
  }
}