import 'package:flutter/material.dart';
import 'package:screen92/service/api_service.dart';

class Posters extends StatefulWidget {
  const Posters({super.key});

  @override
  State<Posters> createState() => _PostersState();
}

class _PostersState extends State<Posters> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiClient.getPosters(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }   
        else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } 
        else if (snapshot.hasData) {
          final posters = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: posters.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        posters[index],
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } 
        else {
          return const Text('No data available');
        }
      },
    );
  }
}