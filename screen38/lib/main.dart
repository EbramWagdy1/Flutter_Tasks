import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({super.key});

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  final List<String> items = List.generate(9, (index) => "Item ${index + 1}");

  void addItem() {
    setState(() {
      items.add("Item ${items.length + 1}");
    });
  }

  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color(0xFF262626),
            margin: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              title: Text(
                items[index],
                style: const TextStyle(color: Colors.orange),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.orange),
                onPressed: () => deleteItem(index),
              ),
            ),
          );
        },
      ),
      // Add Button Implementation
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        backgroundColor: const Color(0xFF262626),
        foregroundColor: Colors.orange,
        shape: CircleBorder(),
        child: Icon(Icons.add, size: 30),
      ),
    );
  }
}
