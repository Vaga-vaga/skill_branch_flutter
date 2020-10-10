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

  User getUserByLogin(String userLogin) {
    User user = users[userLogin];
    return user;
  }

  User registerUserByEmail(String fullName, String email) {
    if (!users.containsKey(email)) {
      return users[email];
    }
    User user = User.registerWithEmail(name: fullName, email: email);
    this.users[email] = user;
    return user;
  }

  User registerUserByPhone(String name, String phone) {
    User user = User();
    return user;
  }

  void setFriends(String userLogin, Iterable friends) {}

  User findUserInFriends(String fullName, User user) {
    if (!users.containsKey(user.login)) {
      throw Exception("${user.login} is not a friend of the login");
    }
    return users[user.login];
  }

  List<User> importUsers(Iterable<String> users) {
    List<User> users = [User()];
    return users;
  }
}
