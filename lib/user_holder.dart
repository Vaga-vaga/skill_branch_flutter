import 'models/user.dart';

class UserHolder {
  Map<String, User> users = {};

  void registerUser(String name, String phone, String email) {
    User user = User(name: name, email: email, phone: phone);

    print(user.toString());

    if (!users.containsKey(user.login)) {
      //users.addAll({user.login: user});
      users[user.login] = user;
    } else {
      throw Exception("User already exists");
    }
  }

  User registerUserByEmail(String name, String email) {
    User user = User();
  }
}
