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
        body: const Center(
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.person , size: 50,), 
              ),
              SizedBox(height: 20,),
              Text("User 1", style: TextStyle(color:  Color.fromARGB(255, 133, 104, 78),),),
              Divider(
                height: 30,
                thickness: 3,
                indent: 50,
                endIndent: 50,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.person , size: 50,), 
              ),
              SizedBox(height: 20,),
              Text("User 2", style: TextStyle(color:  Color.fromARGB(255, 133, 104, 78),),),
              Divider(
                height: 30,
                thickness: 3,
                indent: 50,
                endIndent: 50,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.person , size: 50,), 
              ),
              SizedBox(height: 20,),
              Text("User 1", style: TextStyle(color:  Color.fromARGB(255, 133, 104, 78),),),
            
            ],
          ),
        ),
      ),
    );
  }
}
