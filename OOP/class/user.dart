/*
- Static value is directly accessable with out create a class instance.
- Class variable is known as property.
- Method refers that which function is decleard in class
*/

class User {
  String? userName;
  String? userPass;

  bool login(String name, String password) {
    if (name == userName && password == userPass) {
      return true;
    }
    return false;
  }

  bool logout(String name) {
    if (name == userName) {
      print("User logout");
    }
    return false;
  }
}
