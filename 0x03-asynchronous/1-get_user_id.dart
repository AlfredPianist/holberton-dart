import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  Map<String, dynamic> response = json.decode(await fetchUserData());
  return response['id'];
}
