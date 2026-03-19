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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C1C14),
          title: const Text('Tab Bar', style: TextStyle(color: Colors.amber)),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF1C1C14),
              child: const TabBar(
                tabs: [
                  Tab(text: 'Tab one' ,icon: Icon(Icons.looks_one)),
                  Tab(text: 'Tab two', icon: Icon(Icons.looks_two)),
                  Tab(text: 'Tab three', icon: Icon(Icons.looks_3)),
                  Tab(text: 'Tab four', icon: Icon(Icons.looks_4)),
                ],
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.red, width: 6),
                  ),
                ),
                indicatorWeight: 10,
                indicatorPadding: EdgeInsets.all(10),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,

                labelPadding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 8.0,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text("Content of Tab 1")),
                  Center(child: Text("Content of Tab 2")),
                  Center(child: Text("Content of Tab 3")),
                  Center(child: Text("Content of Tab 4")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
