void main() {
  String data = 'adil';

  List<String> array = data.split('').toList();
  List<String> reversed = [];
  revercearray(array, reversed);
  print(reversed);
}

revercearray(List<String> array, List<String> reversed) {
  helper(array, reversed, array.length - 1);
}

helper(List<String> array, List<String> reversed, int m) {
  if (m >= 0) {
    reversed.add(array[m]);
    helper(array, reversed, m - 1);
  }
}
