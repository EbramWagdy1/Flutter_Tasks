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
          title:Text('Column and Row') ,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ), 
                Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/post.jpg', fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    flex: 2,
                    child: Text('Flutter',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    )),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ],
          ),
        ),
      )
    );
  
  }
  }