abstract class CommonUser {
  String? userName;
  String? userPass;
  bool? islogin = false;

  CommonUser(String this.userName, String this.userPass) {}

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

  void deleteAccount();
}
