void main() {
  List<int> array = [64, 34, 25, 12, 22, 11, -90];

  print(mergesort(array));
}

List<int> mergesort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }
  int middle = array.length ~/ 2;
  List<int> left = array.sublist(0, middle);
  List<int> right = array.sublist(middle);

  left = mergesort(left);
  right = mergesort(right);
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  int i = 0, j = 0;
  List<int> result = [];
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }

  while (j < right.length) {
    result.add(right[j]);
    j++;
  }
  return result;
}
