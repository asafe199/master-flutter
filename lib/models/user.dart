import 'enums/roles.dart';

class User {
  String id;
  String name;
  String lastName;
  String email;
  String phone;
  int age;
  String password;
  Roles roles;

  User({this.id, this.name, this.lastName, this.email, this.phone, this.age,
      this.password, this.roles});

  factory User.fromJson(Map<String, dynamic> data) {
    var json = data['data'];
    return User(
      id: json['id'],
      name: json["name"],
      lastName: json["lastName"],
      email: json["email"],
      phone: json["phone"],
      age: json["age"],
      roles: json["roles"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "lastName": this.lastName,
      "email": this.email,
      "phone": this.phone,
      "age": this.age,
      "roles": this.roles,
      "password": this.password,
    };
  }

}

