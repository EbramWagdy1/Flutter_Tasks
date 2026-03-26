import 'package:dio/dio.dart';
import 'package:screen93/product_model.dart';

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
      List<dynamic>data=response.data['products'];
      List<Product>products=data.map((productData)=>Product.fromJson(productData)).toList();
      return products;
    }
    catch(e){
      throw Exception('Error: $e');
    }
  }

}