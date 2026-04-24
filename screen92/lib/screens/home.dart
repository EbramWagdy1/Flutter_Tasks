import 'package:flutter/material.dart';
import 'package:screen92/screens/widgets/movie.dart';
import 'package:screen92/screens/widgets/poster.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 2, child: Movies()),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Trending Movies',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ],
          ),
          Expanded(flex: 1, child: Posters()),
        ],
      ),
    );
  }
}
