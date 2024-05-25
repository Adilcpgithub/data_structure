void main() {
  List<int> numbers = [5, 55, 3, 9, 1, 7, 2];
  int maxElement = findMax(numbers);
  print("The maximum element in the array is: $maxElement");
}

int findMax(List<int> array) {
  int max = 0;

  for (int i = 1; i < array.length; i++) {
    if (array[i] > max) {
      max = array[i];
    }
  }

  return max;
}
