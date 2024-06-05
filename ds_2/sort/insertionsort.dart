insertion(List<int> array) {
  for (int i = 1; i <= array.length - 1; i++) {
    int current = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] > current) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = current;
  }
  return array;
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, -90];

  print(insertion(numbers));
}
