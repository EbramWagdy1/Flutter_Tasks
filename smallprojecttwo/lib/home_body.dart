import 'package:flutter/material.dart';
import '/product_api.dart';
import 'product_body.dart';

class DisplayProducts extends StatefulWidget {
  const DisplayProducts({super.key});

  @override
  State<DisplayProducts> createState() => _DisplayProductsState();
}

class _DisplayProductsState extends State<DisplayProducts> {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
        future: ApiClient.getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            var products = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, i) {
                  var product = products[i];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(id: product.id),));
                    },
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                              product.thumbnail,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.title,
                              maxLines: 1,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${product.price} \$',
                              maxLines: 1,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Text('Error: ${snapshot.error}');
          }
        },
      
    );
  }
}
