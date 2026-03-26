class BooksModel{
  String id;
 String title;
 String image;
 BooksModel({required this.title ,required this.image , required this.id});

   factory BooksModel.fromJson(Map<String, dynamic> json) {
    return BooksModel(
      id: json['id'] ?? '',
      title: json['volumeInfo']?['title'] ?? 'No Title',
      image: json['volumeInfo']?['imageLinks']?['thumbnail'] 
    );
  }
}

