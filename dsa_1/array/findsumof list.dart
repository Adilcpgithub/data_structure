void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 5];
  int totalSum = sumOfArray(numbers);
  print("The sum of all elements in the array: $totalSum");
}

int sumOfArray(List<int> array) {
  int sum = 0;

  for (int num in array) {
    sum = sum + num;
  }

  return sum;
}
