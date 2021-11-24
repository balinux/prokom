class User {
  String name;
  int age;
  User({this.name, this.age});

  @override
  String toString() {
    return 'User{name: $name, age: $age}';
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(name: json["name"], age: json["age"]);
  }
}
