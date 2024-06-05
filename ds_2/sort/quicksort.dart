void quicksort(List<int> array) {
  quicksorthelper(array, 0, array.length - 1);
}

void quicksorthelper(List<int> array, int startInd, int endInd) {
  if (startInd >= endInd) {
    return;
  }

  int pivotInd = startInd;
  int leftInd = startInd + 1;
  int rightInd = endInd;

  while (leftInd <= rightInd) {
    if (array[leftInd] > array[pivotInd] && array[rightInd] < array[pivotInd]) {
      swap(array, leftInd, rightInd);
      rightInd--;
      leftInd++;
    }
    if (array[leftInd] <= array[pivotInd]) {
      leftInd++;
    }
    if (array[rightInd] >= array[pivotInd]) {
      rightInd--;
    }
  }

  swap(array, pivotInd, rightInd);

  quicksorthelper(array, startInd, rightInd - 1);
  quicksorthelper(array, rightInd + 1, endInd);
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, -90];
  quicksort(numbers);
  print(numbers);
}
