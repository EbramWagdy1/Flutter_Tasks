import 'package:flutter/material.dart' hide Step;
import 'package:screen72/step.dart';

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
      theme: ThemeData(
       useMaterial3: false,
       primarySwatch: Colors.blue,
      ),
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
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF1C1C14),
        title: const Text(
          'Expansion Panel',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          animationDuration: Duration(milliseconds: 500),
       
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              steps[index].isExpanded = !steps[index].isExpanded;
            });
          },
          expandedHeaderPadding: EdgeInsets.all(30.0),
          children: steps.map<ExpansionPanel>((Step step) {
            return ExpansionPanel(
              backgroundColor: Colors.amber[700],
              headerBuilder: (BuildContext context, bool isExpanded) =>Text(step.title),
              body: Text(step.content),
              isExpanded: step.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}