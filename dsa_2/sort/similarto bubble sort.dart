void main() {
  /*No, the provided code does not correctly implement the selection sort algorithm. The code is act
  ually closer to a bubble sort or an inefficient variant of it. In selection sort, the goal is to r
  epeatedly find the minimum element from the unsorted part of the array and move it to the beginning.*/
  List<int> array = [64, 12, -90, 34, 25, 12, 22, 11, -90];

  print(selectionsort(array));
}

selectionsort(List<int> array) {
  for (var i = 0; i < array.length; i++) {
    for (var j = 0; j < array.length; j++) {
      if (array[i] < array[j]) {
        swap(array, i, j);
      }
    }
  }
  return array;
}

void swap(List<int> array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}
