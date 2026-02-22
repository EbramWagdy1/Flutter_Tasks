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
        title: const Text("price List"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: DataTable(
            
            headingRowColor: WidgetStateProperty.all(Colors.blueGrey),
            columns: const [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('price')),
            ],
            rows: const [
              DataRow(
                
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),
                DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),  DataRow(
                cells: [
                  DataCell(Text('0')),
                  DataCell(Text('product 0')),
                  DataCell(Text('500')),
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
