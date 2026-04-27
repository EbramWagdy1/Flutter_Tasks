class Users{
  String name;
  int age;

  Users({
    required this.name,
    required this.age,
  });
    factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      name: json['name'],
      age: json['age'],
    );
  }
}