import 'package:flutter/material.dart';
import 'package:screen94/product_body.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffDBF0F7),
        useMaterial3: false,
      ),
      home: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 18,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {},
          ),
        ),
      ],
      backgroundColor: Color(0xffDBF0F7),
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              DisplayProducts(),
              /*SizedBox(
                height:  MediaQuery.of(context).size.height*0.75 ,
                child: DisplayProducts()),*/
            ],
          ),
        ),
      ),
    );
  }
}
