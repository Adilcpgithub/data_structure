import 'dart:async';

class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class SinglyLinkedList<T> {
  Node<T>? head;
  // Add a new node to the end of the list
  void append(T data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node<T>? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = Node(data);
    }
  }

  void printdata() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  var sample = SinglyLinkedList<int>();
  sample.append(1);
  sample.append(2);
  sample.append(3);
  sample.append(4);
  sample.printdata();
}
