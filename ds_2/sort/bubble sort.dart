bubbleSort(List<int> arr) {
  var n = arr.length;
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        var temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

bubblesortInRecorsion(List<int> arr, int n) {
  if (n == 1) {
    return arr;
  }
  for (var i = 0; i < n - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      var temp = arr[i];
      arr[i] = arr[i + 1];
      arr[i + 1] = temp;
    }
  }
  return bubblesortInRecorsion(arr, n - 1);
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, -90];

  // print(bubbleSort(numbers));
  print(bubblesortInRecorsion(
      numbers = [64, 34, 25, 12, 22, 11, -90], numbers.length));
}
