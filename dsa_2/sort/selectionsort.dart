void main() {
  List<int> array = [64, 12, -90, 34, 25, 12, 22, 11, -90];

  print(selectionsortrecursion(array));
}

selectionsort(List<int> array) {
  for (var i = 0; i < array.length; i++) {
    int samllInd = i;
    for (var j = i + 1; j < array.length; j++) {
      if (array[samllInd] > array[j]) {
        samllInd = j;
      }
    }
    swap(array, i, samllInd);
  }
  return array;
}
//--------------------------------------------------------------------------------------------------------

List<int> selectionsortrecursion(List<int> array) {
  return helper(array, 0);
}

List<int> helper(List<int> array, int startInd) {
  if (startInd >= array.length - 1) {
    return array;
  }
  int smallInd = startInd;
  smallInd = findSmallestIndex(array, smallInd, startInd + 1);
  swap(array, startInd, smallInd);
  return helper(array, startInd + 1);
}

int findSmallestIndex(List<int> array, int smallInd, int j) {
  if (j >= array.length) {
    return smallInd;
  }
  if (array[smallInd] > array[j]) {
    smallInd = j;
  }
  return findSmallestIndex(array, smallInd, j + 1);
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}
