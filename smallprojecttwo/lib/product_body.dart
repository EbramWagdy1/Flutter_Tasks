import 'package:flutter/material.dart';
import 'product_api.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int id;
  const ProductDetailsScreen({super.key, required this.id});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late Future productFuture;
  int index = 0;
  int qt = 1;
  String sel = 'Blue';

  @override
  void initState() {
    super.initState();
    productFuture = ApiClient.getProductDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 18,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: Color(0xffDBF0F7),
      ),
      body: FutureBuilder(
        future: productFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            var product = snapshot.data!;
            List<String> images = product.images;

            return SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (index > 0) index--;
                          });
                        },
                        icon: Icon(Icons.arrow_back_ios_new),
                      ),
                      Container(
                        height: 300,
                        width: 270,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(images[index]),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (index < images.length - 1) index++;
                          });
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      '${index + 1}/${images.length}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.arrow_right, color: Colors.blueGrey),
                            Text(
                              'Price  \$${product.price}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.tealAccent[400],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Color',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    value: sel,
                                    items: ['Blue', 'Black', 'White']
                                        .map(
                                          (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        sel = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(height: 40, width: 1, color: Colors.grey),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'QTY',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  DropdownButton<int>(
                                    value: qt,
                                    items: [1, 2, 3, 4, 5]
                                        .map(
                                          (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text('$e'),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        qt = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
        },
      ),
    );
  }
}
