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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092837),
      appBar: AppBar(
        title: Text('Login Screen', style: TextStyle(color: Colors.amber)),
        backgroundColor: Colors.brown[900],
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              TextField(
                style: TextStyle(color: const Color.fromARGB(255, 243, 245, 245), ),
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Enter Your Email',
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 243, 245, 245),
                  ),

                  filled: true,
                  fillColor: Color(0xff092837),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.yellow[700]!,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.yellow[700]!,
                      width: 2,
                    ),
                  ),
                  suffixIcon: Icon(Icons.person, color: Colors.yellow[700]!),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                  style: TextStyle(color: const Color.fromARGB(255, 243, 245, 245), ),
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'Enter Your password',
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 243, 245, 245),
                  ),
                  filled: true,
                  fillColor: Color(0xff092837),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.yellow[700]!,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.yellow[700]!,
                      width: 2,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.yellow[700]!,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    // ignore: avoid_print
                    print('''
                          login....
                          Email:$email
                          password:$password
                    ''');
                  });
                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // optional for contrast
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
