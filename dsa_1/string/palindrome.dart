void main() {
  String testString = "malayalam";
  bool result = isPalindrome(testString);
  print(result);
}

bool isPalindrome(String s) {
  int length = s.length;
  for (int i = 0; i < length ~/ 2; i++) {
    if (s[i] != s[length - 1 - i]) {
      return false;
    }
  }
  return true;
}
