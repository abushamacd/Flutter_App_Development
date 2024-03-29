/*
- Static value is directly accessable with out create a class instance.
- Class variable is known as property.
- Method refers that which function is decleard in class
- Constructor help to populate the value
- Inharitance extands the value
*/

import 'common_user..dart';

// inharitance
class User extends CommonUser {
  int? hasBlance;

  User(String userName, String userPass, int? this.hasBlance)
      : super(userName, userPass);

  void buyProduct() {
    print("Buy Product of $hasBlance");
  }

  void deleteAccount() {
    print("User Account Deleted");
  }

  @override
  void checkOverride() {
    print("From user");
  }
}
