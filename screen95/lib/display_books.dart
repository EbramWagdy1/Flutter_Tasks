
import 'package:flutter/material.dart';
import 'package:screen95/books_api.dart';

class DisplayBooks extends StatefulWidget {
  const DisplayBooks({super.key});

  @override
  State<DisplayBooks> createState() => _DisplayBooksState();
}

class _DisplayBooksState extends State<DisplayBooks> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiClient.getAllbooks(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          var books = snapshot.data!;
          return Container(
            decoration: BoxDecoration(
              color: Color(0xff072A34),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: books.length,
                      itemBuilder: (context, i) {
                        var book = books[i];
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 10.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      book.image,
                                      width: 110,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      book.title,
                                      style: const TextStyle(
                                        color: Colors.amber,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // The horizontal divider line
                            const Divider(
                              color: Colors.white24,
                              thickness: 1,
                              height: 1,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
      },
    );
  }
}
