import 'package:flutter/material.dart';
import 'package:screen91/screens/widgets/movie.dart';
import 'package:screen91/screens/widgets/poster.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Posters(),
          SizedBox(height: 16),
          Expanded(child: Movies()),
        ],
      ),
    );
  }
}
