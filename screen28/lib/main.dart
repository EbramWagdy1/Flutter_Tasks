import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DataTable"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: DataTable(
          columns: const [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Book')),
            DataColumn(label: Text('Author')),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(Text('#100')),
                DataCell(Text('Flutter Basics')),
                DataCell(Text('David john')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('#101')),
                DataCell(Text('Git and Github')),
                DataCell(Text('Merlin Nick')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('#102')),
                DataCell(Text('Flutter Basics')),
                DataCell(Text('David john')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}