class Password {
  String? _password;

  String? get password => _password;

  Password({ required String password }) {
    _password = password;
  }

  bool isValid () {
    if (this.password == null)
      return false;
    String regexPattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,16}';
    RegExp regex = new RegExp(regexPattern);
    if (!regex.hasMatch(this.password!))
      return false;
    return true;
  }

  @override
  String toString() {
    return "Your Password is: ${this.password}";
  }
}
