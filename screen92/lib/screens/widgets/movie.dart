import 'package:flutter/material.dart';
import 'package:screen92/models/movie_details.dart';
import 'package:screen92/service/api_service.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: FutureBuilder<MovieDetails>(
      future: ApiClient.getMovieDetails(502396), 
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          final movie = snapshot.data!;
          
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
                    width: double.infinity,
                    height:300,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Release Year: ${movie.releaseDate.split('-')[0]}',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            Text(
                              'Language: ${movie.originalLanguage.toUpperCase()}',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),  
                      const SizedBox(height: 10),
                      Text(
                        movie.overview,
                        style: TextStyle(color: Colors.grey[700], fontSize: 16, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return const Center(child: Text('No data'));
      },
    ),
  );
}
}