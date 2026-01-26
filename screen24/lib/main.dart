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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("List view "),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              // First Horizontal List
              Expanded(
                flex: 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(5),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: 100,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Ticket Number $index',
                        style:  TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 7,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(5),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Seat Number $index',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}