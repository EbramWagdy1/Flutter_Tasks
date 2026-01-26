import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      title: 'Flutter Demo',
      home:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text('Horizontal ListView '),
        ),

        body: Row(
    children: [
      Expanded(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          separatorBuilder: (context, index) => const VerticalDivider(
            color: Colors.grey,
            thickness: 3,
            indent: 250, 
                  endIndent: 250,
          ),
          itemBuilder: (context, index) {
            return Center(
              child: SizedBox(
                width: 160, // REQUIRED for horizontal ListTile
                child: ListTile(
                  title: Text('your ticket number is \n ${index + 1}'),
                ),
              ),
            );
          },
        ),
      ),
    ],
  ),
      ),
    );
  }
}

