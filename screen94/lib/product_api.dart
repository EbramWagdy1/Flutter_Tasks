import 'package:dio/dio.dart';
import 'package:screen94/product_model.dart';

abstract class ApiClient{
  static final dio=Dio(
      BaseOptions(
    baseUrl:'https://dummyjson.com/',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 5),
  )
  );

  static Future<List<Product>> getAlProducts()async{
    try{
      var response =await dio.get('/products/category/smartphones');
      List<dynamic>data=response.data['products[0]'];
      List<Product>products=data.map((productData)=>Product.fromJson(productData)).toList();
      return products;
    }
    catch(e){
      throw Exception('Error: $e');
    }
  }

  static Future<Product> getFirstProduct() async {
  try {
    var response = await dio.get('products/category/smartphones');
    var firstProductData = response.data['products'][1]; 
    return Product.fromJson(firstProductData);
  } catch (e) {
    throw Exception('Error: $e');
  }
}

}