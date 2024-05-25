void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int totalSum = arraySum(numbers, 0);

  print("sum = $totalSum");
}

int arraySum(List<int> array, int index) {
  if (index == array.length) {
    return 0;
  }

  return array[index] + arraySum(array, index + 1);
}
