bool isPalindrome(String s) {
  if (s.length < 3) return false;
  String reversed_string = s.split('').reversed.join('');
  if (s == reversed_string) return true;
  return false;
}
