import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/users_model.dart';

 Future<List<Users>> loadUsers() async {
  final String response = await rootBundle.loadString('assets/user.json');
  final data = json.decode(response);
  List usersJson = data['users'];
  return usersJson.map((e) => Users.fromJson(e)).toList();
}


