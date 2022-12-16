class User {
  String? name;
  int? age;
  double? height;

  User({required String name, required int age, required double height}) {
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map<String, Object?> toJson () {
    return {
      'name': this.name,
      'age': this.age,
      'height': this.height
    };
  }
}
