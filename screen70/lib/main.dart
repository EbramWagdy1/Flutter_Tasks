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
  int currentStep = 0;
  List<Step> get steps => [
    Step(
      title: const Text('Account Info', style: TextStyle(color: Colors.white)),
      content: Column(
        children: [
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'First Name',
              labelStyle: const TextStyle(color: Colors.white),
              suffixIcon: const Icon(Icons.person, color: Colors.amber),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'First Name',
              labelStyle: const TextStyle(color: Colors.white),
              suffixIcon: const Icon(Icons.person, color: Colors.amber),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
            ),
          ),
        ],
      ),
      isActive: true,

    ),
    Step(
      title: const Text('Address Info', style: TextStyle(color: Colors.white)),
      content:  Column(
        children: [
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'City',
              labelStyle: const TextStyle(color: Colors.white),
              suffixIcon: const Icon(Icons.location_city, color: Colors.amber),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'postal code',
              labelStyle: const TextStyle(color: Colors.white),
              suffixIcon: const Icon(Icons.code, color: Colors.amber),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
            ),
          ),
        ],
      ),
      isActive: currentStep >= 1,
    ),
    Step(
      title: const Text('Misc', style: TextStyle(color: Colors.white)),
      content: Column(
        children: [
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Bio',
              labelStyle: const TextStyle(color: Colors.white),
              suffixIcon: const Icon(Icons.comment, color: Colors.amber),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.amber, width: 2),
              ),
            ),
          ),
      
        ],
      ),
     isActive: currentStep >= 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF092837),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF1C1C14),
        title: const Text(
          'Staper Widget',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Stepper(
        controlsBuilder: (context, details) {
          return Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: details.onStepCancel,
                child: const Text('Back', style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: details.onStepContinue,
                child: const Text('Confirm', style: TextStyle(color: Colors.black)),
              ),
            ],
          );
        },
        type: StepperType.vertical,
        currentStep: currentStep,
        onStepCancel: () => setState(() {
          if (currentStep > 0) {
            currentStep--;
          }
        }),
        steps: steps,
        onStepContinue: () {
          if (currentStep < steps.length - 1) {
            setState(() {
              currentStep++;
            });
          }
        },
      ),
    );
  }
}
