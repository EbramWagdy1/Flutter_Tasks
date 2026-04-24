class MovieDetails {
  final int id;
  final String title;
  final String overview;
  final String backdropPath;
  final String releaseDate;
  final String originalLanguage;


  MovieDetails({
    required this.id,
    required this.title,
    required this.overview,
    required this.backdropPath,
    required this.releaseDate,
    required this.originalLanguage,

  });

  factory MovieDetails.fromJson(Map<String, dynamic> json) {
    return MovieDetails(
      id: json['id'],
      title: json['title'] ?? '',
      overview: json['overview'] ?? '',
      backdropPath: json['backdrop_path'] ?? '',
      releaseDate: json['release_date'] ?? '',
      originalLanguage: json['original_language'] ?? '',
    );
  }

}