class Movie {
  final String posterPath;

  Movie({
    required this.posterPath,
  });
  
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      posterPath: json['poster_path'] ?? '',
    );
  }
}