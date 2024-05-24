void main() {
  List<int> array = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
  ];
  //int data = binerysearch(array, 111);
//  print(data);
  bineryrecurtion(array, 7);
}

bineryrecurtion(List<int> array, int target) {
  int start = 0;
  int end = array.length - 1;
  int data = helper(array, target, start, end);
  print(data);
}

helper(List<int> array, int targer, int start, int end) {
  if (start > end) {
    return -1;
  }
  int midle = start + (end - start) ~/ 2;
  if (array[midle] == targer) {
    return midle;
  } else if (array[midle] > targer) {
    return helper(array, targer, start, end - 1);
  } else {
    return helper(array, targer, start + 1, end);
  }
}

int binerysearch(List<int> arry, int target) {
  int start = 0;
  int end = arry.length - 1;
  while (start <= end) {
    int middle = start + (end - start) ~/ 2;
    if (arry[middle] == target) {
      return middle;
    } else if (arry[middle] > target) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
  }
  return -1;
}
