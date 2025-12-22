import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        
      ),
      home:  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title:  Text('Divider', style: TextStyle(
            color: Colors.yellow[900], 
          ),),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person , size: 40,), 
                  ),
                  SizedBox(height: 20,),
              Text("User 1", style: TextStyle(color:  Color.fromARGB(255, 133, 104, 78),),),
                ],
              ),
            ),
            VerticalDivider(
              width: 30,
              thickness: 3,
              indent: 0,
              endIndent: 700,
              color: Colors.red,
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person , size: 40,), 
                  ),
                  SizedBox(height: 20,),
                           Text("User 2", style: TextStyle(color:  Color.fromARGB(255, 133, 104, 78),),),
                ],
                           ),
             ),
             VerticalDivider(
              width: 30,
              thickness: 3,
              indent: 0,
              endIndent: 700,
              color: Colors.red,
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person , size: 40,), 
                  ),
                  SizedBox(height: 20,),
                           Text("User 3", style: TextStyle(color:  Color.fromARGB(255, 133, 104, 78),),),
                ],
                           ),
             ),
          ],
        ),
      ),
    );
  }
}
