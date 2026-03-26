class BooksModel{
 String title;
 String image;
 BooksModel({required this.title ,required this.image });

   factory BooksModel.fromJson(Map<String, dynamic> json) {
    return BooksModel(
      title: json['volumeInfo']?['title'] ?? 'No Title',
      image: json['volumeInfo']?['imageLinks']?['thumbnail'] 
    );
  }
}

