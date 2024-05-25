void main() {
  String testString = "Hello, World";
  int result = countVowels(testString);
  print(result);
}

int countVowels(String input) {
  int vowelCount = 0;
  String vowels = 'aeiouAEIOU';

  for (int i = 0; i < input.length; i++) {
    if (vowels.contains(input[i])) {
      vowelCount++;
    }
  }

  return vowelCount;
}
