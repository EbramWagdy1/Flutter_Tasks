
import 'package:flutter/material.dart';
import 'books_api.dart';
class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future:ApiClient.getAllbooks() , 
    builder:(context, snapshot){
      if(snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator());
      }else if(snapshot.hasData){
       final booksList = snapshot.data!;
       return Padding(
         padding: const EdgeInsets.all(16.0),
         child: SizedBox(
               height: 50, 
               child: ListView.builder(
          padding: const EdgeInsets.only(left: 20),
          scrollDirection: Axis.horizontal, 
          itemCount: booksList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  booksList[index].image,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
               ),
             ),
       );
      }else{return Text('Error: ${snapshot.error}');}
    }
    );
  }
}