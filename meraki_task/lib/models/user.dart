List<User> _users = [];

class User {
  final String email;
  final String password;

  User(
    this.email,
    this.password,
  );

  void addUser() {
    _users.add(this);
  }

  String findUser() {
    for (var element in _users) {
      if (element.password == this.password && element.email == this.email) {
        return "login success";
      }
    }
    return "login faild";
  }
}


// class UserData {
  // List<User> users = [];

// //  instance variables

//   void addUser(email, pass) {
//     users.add(User(password: pass, email: email));
//   }



//   List getData() {
//     return users;
//   }
// }
