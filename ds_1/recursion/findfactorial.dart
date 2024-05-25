void main() {
  var data = findfactorial(5);
  print('factorial is $data  ');
}

findfactorial(int fact) {
  return helper(fact);
}

helper(int fact) {
  if (fact == 1 || fact == 0) {
    return 1;
  } else {
    return fact * helper(fact - 1);
  }
}
