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
      title: 'Screen 20',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title:Text('Chats') ,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),
                            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),
                            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                 ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('How are you?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Text('12:00 PM',
                    style: TextStyle(
                      fontSize:15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    )),
                  ),
                ],
              ),
              SizedBox(height: 20),
              
             

            ],
          ),
        ),
      )
    );
  
  }
  }