void main() {
  List<int> given = [8, 7, 6, 2, 1, -1, -2];

  int sum = 0;
  sum = findsum(given);
  print(sum);
}

findsum(List<int> array) {
  return helper(array, 0);
}

helper(
  List<int> array,
  int m,
) {
  if (m <= array.length - 1) {
    return array[m] + helper(array, m + 1);
  }
  return 0;
}
