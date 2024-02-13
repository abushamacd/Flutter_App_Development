import 'dart:io';
import 'user.dart';

void main() {
  // create instance
  // var usr1 = User();
  // usr1.userName = "shama";
  // usr1.userPass = "123";

  var usr1 = User();

  usr1.userName = "shama";
  usr1.userPass = "123";

  print("Type Your Name");
  String? name = stdin.readLineSync();

  print("Type Your Password");
  String? password = stdin.readLineSync();

  print("Name: $name & Password: $password ");

  if (usr1.login(name!, password!)) {
    print('User log in successful');
  } else {
    print('User log in failed');
  }

  usr1.logout(name);
}
