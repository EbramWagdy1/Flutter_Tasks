import 'package:flutter/material.dart' hide Step;
import 'package:screen73/step.dart';

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
        centerTitle: true,
        backgroundColor: const Color(0xFF1C1C14),
        title: const Text(
          'Expansion Panel',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1C1C14)),
            onPressed: () {
              setState(() {
                for (var step in steps) {
                  step.isExpanded = true;
                }
              });
            },
            child: const Text("Expand All"),
          ),
          ExpansionPanelList(
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
                headerBuilder: (BuildContext context, bool isExpanded) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0), 
                        child: Text(
                          step.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        step.content,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    isExpanded: step.isExpanded,
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
