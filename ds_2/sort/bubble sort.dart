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
//-------------------------------------------------------------------------------------------------------

List<int> bubblesortInRecursion(List<int> arr, int n) {
  // Base case: If the array size is 1, it's already sorted
  if (n <= 1) {
    return arr;
  }
  // Perform a single pass of bubble sort
  bubblePass(arr, n, 0);
  // Call the function recursively to sort the remaining part of the array
  return bubblesortInRecursion(arr, n - 1);
}

void bubblePass(List<int> arr, int n, int i) {
  // Base case: End of this pass
  if (i >= n - 1) {
    return;
  }
  // Swap if the current element is greater than the next element
  if (arr[i] > arr[i + 1]) {
    var temp = arr[i];
    arr[i] = arr[i + 1];
    arr[i + 1] = temp;
  }
  // Recursive call to continue the pass
  bubblePass(arr, n, i + 1);
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, -90];

  // print(bubbleSort(numbers));
  print(bubblesortInRecursion(numbers, numbers.length));
}
