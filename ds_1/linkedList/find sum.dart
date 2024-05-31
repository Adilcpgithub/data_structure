class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class SingleLinkedList<T extends num> {
  // Ensure T is a numeric type
  Node<T>? head;
  Node<T>? tail;

  void add(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
    }
  }

  num findSum() {
    // Use num as the return type for the sum
    Node<T>? temp = head;
    num sum = 0; // Initialize sum to zero
    while (temp != null) {
      sum += temp.data;
      temp = temp.next;
    }
    return sum;
  }
}

void main() {
  var list = SingleLinkedList<int>(); // Specify the type parameter
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  list.add(5);
  num sum = list.findSum();
  print('The sum of all elements in the list is: $sum');
}
