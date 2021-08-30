import 'package:master/models/user.dart';

class AuthUser {
  String token;
  User user;

  AuthUser({this.token, this.user});

  factory AuthUser.fromJson(Map<String, dynamic> data) {
    var json = data['data'];
    return AuthUser(
      token: json['token'],
      user: User.fromJson(
        json["user"],
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "token": this.token,
      "user": this.user,
    };
  }
}
