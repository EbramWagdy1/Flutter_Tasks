import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C1C14),
          centerTitle: true,
          title: const Text(
            'Tab Bar',
            style: TextStyle(color: Colors.amber),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF1C1C14),
              child: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home, color: Colors.white)),
                  Tab(icon: Icon(Icons.camera, color: Colors.white)),
                ],
              indicatorColor: Colors.blueAccent,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("This is Home")),
                  Center(child: Text("This is Camera")),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}