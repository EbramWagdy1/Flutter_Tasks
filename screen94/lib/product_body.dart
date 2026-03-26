import 'package:flutter/material.dart';
import 'package:screen94/product_api.dart';

class DisplayProducts extends StatefulWidget {
  const DisplayProducts({super.key});

  @override
  State<DisplayProducts> createState() => _DisplayProductsState();
}

class _DisplayProductsState extends State<DisplayProducts> {
  late Future productFuture;
  int index = 0;
  int qt=1;
  String sel='Blue';

  @override
  void initState() {
    super.initState();
    productFuture = ApiClient.getFirstProduct();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: productFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          var products = snapshot.data!;
          List<String> images = products.images;
          return Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      products.title.split('F19')[0],
                      style: TextStyle(fontWeight: .bold, fontSize: 24),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      products.title,
                      style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (index > 0) {
                            index--;
                          }
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
                          if (index < images.length - 1) {
                            index++;
                          }
                        });
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
                Text(
                  '${index + 1}/${images.length}',
                  style: TextStyle(fontWeight: .bold, fontSize: 18),
                ),
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
                        products.title,
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
                            'Price  \$${products.price}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.tealAccent[400]
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
                                      sel=value!;
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
                                      qt=value!;
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
          return Text('Error: ${snapshot.error}');
        }
      },
    );
  }
}
