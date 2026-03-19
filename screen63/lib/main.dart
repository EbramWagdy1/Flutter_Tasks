import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C1C14),
          centerTitle: true,
          title: const Text('Tab Bar', style: TextStyle(color: Colors.amber)),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF1C1C14),
              child: const TabBar(
                tabs: [
                  Tab(text: 'Tab 1', icon: Icon(Icons.looks_one)),
                  Tab(text: 'Tab 2', icon: Icon(Icons.looks_two)),
                  Tab(text: 'Tab 3', icon: Icon(Icons.looks_3)),
                  Tab(text: 'Tab 4', icon: Icon(Icons.looks_4)),
                  Tab(text: 'Tab 5', icon: Icon(Icons.looks_5)),
                  Tab(text: 'Tab 6', icon: Icon(Icons.looks_6)),
                ],
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.transparent,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Content of Tab 1")),
                  Center(child: Text("Content of Tab 2")),
                  Center(child: Text("Content of Tab 3")),
                  Center(child: Text("Content of Tab 4")),
                  Center(child: Text("Content of Tab 5")),
                  Center(child: Text("Content of Tab 6")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
