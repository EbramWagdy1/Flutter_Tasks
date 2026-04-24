class Movie {
  final String title;
  final String overview;
  final String posterPath;
  final double rating;

  Movie({
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.rating,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'] ?? '',
      overview: json['overview'] ?? '',
      posterPath: json['poster_path'] ?? '',
      rating: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
    );
  }

}