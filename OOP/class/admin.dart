import 'common_user..dart';

class Admin extends CommonUser {
  bool? isSuperAdmin;

  Admin(String userName, String userPass) : super(userName, userPass);

  void createProduct() {
    print("Create Product");
  }
}
