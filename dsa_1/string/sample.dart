void main() {
  List<int> arr = [6, 1, 6, 8, 10, 4, 15, 6, 3, 9, 6];
  var set = 6;
  var l = arr.length;
  int j = l - 1;
  for (var i = 0; i < l; i++) {
    if (i >= j) {
      break;
    }
    if (arr[i] == set) {
      while (arr[j] == set && j > i) {
        j--;
      }
      if (i < j) {
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
        j--;
      }
    }
  }
  print(arr);
}
