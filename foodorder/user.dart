class User {
  String Pass = "";
  String Address = "";
  String Email = "";
  User(this.Email, this.Pass, this.Address);
  get address => this.Address;
  get email => this.Email;
  get pass => this.Pass;
}

class user_accounts {
  List<User> _users = [];
  Map<String, Map> history = {};
  void add_account(User val) {
    _users.add(val);
  }

  void remove_account(User val) {
    _users.add(val);
  }

  bool find_user(String email) {
    bool is_available = false;
    for (int i = 0; i < _users.length; i++) {
      if (_users[i].email == email) {
        is_available = true;
      }
    }
    return is_available;
  }

  bool compare_pass(String email, String pass) {
    bool is_real = false;
    for (int i = 0; i < _users.length; i++) {
      if (_users[i].email == email && _users[i].pass == pass) {
        is_real = true;
      }
    }
    return is_real;
  }

  String findaddress(email) {
    late String a;
    for (int i = 0; i < _users.length; i++) {
      if (_users[i].email == email) {
        a = _users[i].address;
      }
    }
    return a;
  }
}
