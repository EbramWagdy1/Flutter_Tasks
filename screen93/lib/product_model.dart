class Product {
  int id;
  String title;
  double price;
  String thumbnail;
  Product({required this.id,required this.price,required this.thumbnail,required this.title});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
    id: json['id'],
    title :json['title'],
    price : json['price'],
    thumbnail : json['thumbnail']);
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
