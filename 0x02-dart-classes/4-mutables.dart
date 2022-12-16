class Password {
  String? _password;

  String? get password => this._password;
  void set password (String? password) {
    this._password = password;
  }

  Password({ required String password }) {
    this._password = password;
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
