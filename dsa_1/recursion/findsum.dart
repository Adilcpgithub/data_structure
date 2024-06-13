void main() {
  List<int> array = [
    5,
    5,
    5,
    5,
    5,
  ];
  int data = findsum(array);
  print('factorial is $data  ');
}

findsum(List<int> array) {
  return helper(array, array.length - 1);
}

helper(List<int> array, int m) {
  if (m < 0) {
    return 0;
  } else {
    return array[m] + helper(array, m - 1);
  }
}
