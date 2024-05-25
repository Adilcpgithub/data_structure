void main() {
  List<int> array = [1, 2, 3, 4, 5];
  List<int> reversed = [];
  revercearray(array, reversed);
  print(reversed);
}

revercearray(List<int> array, List<int> reversed) {
  helper(array, reversed, array.length - 1);
}

helper(List<int> array, List<int> reversed, int m) {
  if (m >= 0) {
    reversed.add(array[m]);
    helper(array, reversed, m - 1);
  }
}
