import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen 26',
      debugShowCheckedModeBanner: false,
      home:Gridviewscreen(),
    );
  }
}

class Gridviewscreen extends StatelessWidget {
    const Gridviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '*', '0', '#'];

    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Grid View',
          style: TextStyle(color: Colors.orange, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF2A2A2A),
        elevation: 20,
      ),
      backgroundColor:  Color(0xFF2A2A2A),
      body: Column(
        children: [
          SizedBox(height: 200),
          Expanded(
            child: GridView.builder(
              padding:  EdgeInsets.all(20),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color:  Color(0xFF3A3A3A),
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  
                  child: Center(
                    child: Text(
                      items[index],
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
