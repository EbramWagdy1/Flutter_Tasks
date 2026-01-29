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
        useMaterial3: false,
      ),  
      home:Gridviewcustom(),
    );
  }
}

class Gridviewcustom extends StatelessWidget {
  const Gridviewcustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Grid View',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        padding: EdgeInsets.all(8.0),
        itemBuilder: (context, i) {
          final ticketNumber = i + 1;
          return Container(
            height: 200 ,
            width: 200,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.brown,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Ticket',
                    style: TextStyle(color: Colors.yellow, fontSize: 18),
                  ),
                  Text(
                    'Number Is',
                    style: TextStyle(color: Colors.yellow, fontSize: 18),
                  ),
                  Text(
                    '$ticketNumber',
                    style: TextStyle(color: Colors.yellow, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 30, 
      ),
    );
  }
}
