class Product {
  int id;
  String title;
  double price;
  String thumbnail;
  final List<String> images;
  Product({required this.id,required this.price,required this.thumbnail,required this.title, required this.images});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
    id: json['id'],
    title :json['title'],
    price : json['price'],
    thumbnail : json['thumbnail'],
    images:List<String>.from(json['images']) 
    );

  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['thumbnail'] = thumbnail;
    return data;
  }
}
