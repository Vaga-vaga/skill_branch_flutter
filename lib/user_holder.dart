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
    if (users.containsKey(email))
      throw Exception('A user with this email already exists');

    if (!email.contains("@")) throw Exception('User email must contain @');

    User user = User.registerWithEmail(name: fullName, email: email);
    this.users[user.login] = user;
    return user;
  }

  User registerUserByPhone(String fullName, String phone) {
    if (users.containsKey(phone)) {
      throw Exception('A user with this phone already exists');
    }
    User user = User.registerWithPhone(name: fullName, phone: phone);
    this.users[user.login] = user;
    return user;
  }

  void setFriends(String userLogin, Iterable friends) {
    if (!users.containsKey(userLogin)) {
      throw Exception("User does not exist");
    }
    users[userLogin].addFriends(friends);
  }

  User findUserInFriends(String fullName, User user) {
    User currentUser = getUserByLogin(fullName);
    if (currentUser == null) throw Exception("User does not exist");
    if (!currentUser.friends.contains(user)) {
      throw Exception("${user.login} is not a friend of the login");
    }
    return user;
  }

  List<User> importUsers(Iterable<String> usersToCreate) {
    List<User> newUsers = [];
    for (String userData in usersToCreate) {
      userData = userData.replaceAll(new RegExp('[\n]+'), '');
      newUsers.add(User(
          name: userData.split(';')[0].trim(),
          email: userData.split(';')[1].trim(),
          phone: userData.split(';')[2].trim()));
    }

    return newUsers;
  }
}
