import 'package:flutter/material.dart';
import 'package:screen96/all_Book_detial.dart';
import 'package:screen96/books_api.dart';

class BookDetials extends StatefulWidget {
  const BookDetials({super.key});

  @override
  State<BookDetials> createState() => _BookDetialsState();
}

class _BookDetialsState extends State<BookDetials> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiClient.getOnebook(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          var books = snapshot.data!;
          var book = books;
          return Scaffold(
            backgroundColor: Color(0xff072A34),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 10),
              ],
            ),
            body: Column(
              crossAxisAlignment: .center,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(book.image)),
                  ),
                ),
                Text(
                  book.title,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Free",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xffE98765),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Preview",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Also See',style:TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),),
                      Icon(Icons.arrow_forward,color: Colors.white),
                    ],
                  ),
                ),
                Expanded(child:Books())
              ],
            ),
          );
        } else {
          return Text('Error: ${snapshot.error}');
        }
      },
    );
  }
}