import 'dart:io';

import 'user.dart';

void main() {
  print("Type Your Name");
  String? name = stdin.readLineSync();

  print("Type Your Password");
  String? password = stdin.readLineSync();

  print("Name: $name & Password: $password ");

  if (User.login(name!, password!)) {
    print('User log in successful');
  }

  User.logout(name);
}
