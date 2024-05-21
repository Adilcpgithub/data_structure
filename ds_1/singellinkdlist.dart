import 'dart:async';

class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class SinglyLinkedList<T> {
  Node<T>? head;
  //----------------------------------------------------------------------------
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

  Node<T>? find(T data) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == data) {
        print('ot');
        return current;
      }
      current = current.next;
    }
    return null;
  }

  void printdata() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  delete(T data) {
    if (head == null) {
      return;
    }
    if (head!.data == data) {
      head = head?.next;
      return;
    }
    Node<T>? current = head;
    while (current?.next != null) {
      if (current?.next?.data == data) {
        current?.next = current.next?.next;
        return;
      }
      current = current?.next;
    }
  }
}

void main() {
  var sample = SinglyLinkedList<int>();
  sample.append(1);
  sample.append(2);
  sample.append(3);
  sample.append(4);

  sample.delete(1);

  sample.printdata();
}
