
// ignore: dangling_library_doc_comments
/******************************* غباء ليفل الوحش **************************
 * ***************** انشاء الله بعد سنين هرجعلوا تانى ********************
*/


/*
import 'package:flutter/material.dart';
import 'package:screen97/service/load_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StateFull Builder'), centerTitle: true),
      body: StatefulBuilder(builder: (context, setState) {
        return FutureBuilder(
          future: loadUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(snapshot.data![index].name),
                              content: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    snapshot.data![index].name = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Enter new name',
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, snapshot.data![index].name);
                                    print(snapshot.data![index].name);
                                  },
                                  child: const Text('save'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      title: Text(snapshot.data![index].name),
                      subtitle: Text(snapshot.data![index].age.toString()),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text('Error loading data'));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        );
      }),
    );
  }
}
*/