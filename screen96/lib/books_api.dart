import 'package:dio/dio.dart';
import 'books_model.dart';

abstract class ApiClient{
  static final dio=Dio(
    BaseOptions(baseUrl: 'https://www.googleapis.com/books',
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 5),
    )
  );
 static Future<List<BooksModel>> getAllbooks()async{
      try{
      var response =await dio.get('/v1/volumes?q=programming');
      List<dynamic>data=response.data['items'];
      List<BooksModel>books=data.map((productData)=>BooksModel.fromJson(productData)).toList();
      return books;
    }
    catch(e){
      throw Exception('Error: $e');
    }
  }
 static Future<BooksModel> getOnebook()async{
      try{
      var response =await dio.get('/v1/volumes?q=programming');
      var data=response.data['items'][5];
      return BooksModel.fromJson(data); 
     }
    catch(e){
      throw Exception('Error: $e');
    }
  }
 }
