import 'package:flutter/material.dart';
import 'package:screen97/service/load_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List users = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    loadUsers().then((value) {
      setState(() {
        users = value;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users'), centerTitle: true),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(users[index].name),
                    subtitle: Text(users[index].age.toString()),
                    onTap: () {
                      final controller = TextEditingController(
                        text: users[index].name,
                      );
                      showDialogs(context, index, controller);
                    },
                  ),
                );
              },
            ),
    );
  }

  void showDialogs(
    BuildContext context,
    int index,
    TextEditingController controller,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(users[index].name),
        content: TextField(controller: controller),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                users[index].name = controller.text;
              });
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
