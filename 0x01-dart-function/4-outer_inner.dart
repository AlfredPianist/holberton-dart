import 'dart:ffi';

void outer(String name, String id) {
  String inner() {
    List<String> name_array = name.split(" ");
    String formatted_name = "${name_array[1].substring(0, 1)}.${name_array[0]}"; 
    return "Hello Agent ${formatted_name} your id is $id";
  }
  print(inner());
}
