void main() {
  List<int> numbers = [5, 3, 9, 1, 7, 2, 8, 6, 4];
  List<int> evenList = evenNumbers(numbers);
  print("Even numbers from the array: $evenList");
}

List<int> evenNumbers(List<int> array) {
  List<int> evenList = [];

  for (int num in array) {
    if (num % 2 == 0) {
      evenList.add(num);
    }
  }

  return evenList;
}
