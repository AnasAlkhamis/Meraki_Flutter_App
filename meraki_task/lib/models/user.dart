class User {
  final String email;
  final String password;

  User({
    required this.email,
    required this.password,
  });
}

class UserData {
  List users = [];

  void addUser(email, pass) {
    print({email, pass});

    users.add(User(password: pass, email: email));
  }

  String findUser(String email, String pass) {
    for (var element in users) {
      if (element.password == pass && element.email == email) {
        return "login success";
      }
    }
    return "login faild";
  }

  List getData() {
    return users;
  }
}
