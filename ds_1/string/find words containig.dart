void main() {
  List<int> array;
  List<String> words = ["leet", "code"];
  String x = 'e';
  array = findWordsContaining(words, x);
  print(array);
}

List<int> findWordsContaining(List<String> words, String x) {
  var l = words.length;
  List<int> data = [];
  for (var i = 0; i < l; i++) {
    if (words[i].contains(x)) {
      data.add(i);
    }
  }
  return data;
}
