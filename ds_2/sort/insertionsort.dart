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
//-----------------------------------------------------------------------------

List<int> insertionSortRecursive(List<int> array, int n) {
  // Base case: if the array is of size 1 or already sorted
  if (n <= 1) {
    return array;
  }

  // Sort the first n-1 elements
  insertionSortRecursive(array, n - 1);

  // Insert the nth element into its correct position
  int last = array[n - 1];
  int j = n - 2;

  // Move elements of array[0..n-1], that are greater than the nth element,
  // to one position ahead of their current position
  while (j >= 0 && array[j] > last) {
    array[j + 1] = array[j];
    j--;
  }
  array[j + 1] = last;

  return array;
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, -90];

  print(insertion(numbers));
}
