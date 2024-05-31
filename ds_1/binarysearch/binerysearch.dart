class Node<T> {
  T data;
  Node<T>? next;
  // Node<T>? next;
  Node(this.data);
}

class singleList<T> {
  Node<T>? head;
  Node<T>? tail;

  void append(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
      tail?.next = null;
    }
  }

  swape() {
    if (head != null) {
      Node<T>? temp = head;
      Node<T>? next;
      Node<T>? prev = null;
      while (temp != null) {
        next = temp.next;
        temp.next = prev;
        prev = temp;
        temp = next;
        head = prev;
      }
    } else {
      print('m t list');
    }
    Node<T>? temp = head;
    while (temp != null) {
      print(temp.data);
      tail = temp;
      temp = temp.next;
    }
    print(tail?.data);
  }

  void traverse() {
    Node<T>? temp = head;

    while (temp != null) {
      print(temp.data);
      tail = temp;
      temp = temp.next;
    }
  }

  void inserafter(T nextTo, T data) {
    Node<T> newNode = Node(data);
    if (head != null) {
      if (head == nextTo) {
        newNode.next = head?.next;
        head?.next = newNode;
        if (newNode.next == null) ;
        tail = newNode;
      }
      Node<T>? temp = head;
      while (temp != null) {
        if (temp.data == nextTo) {
          newNode.next = temp.next;
          temp.next = newNode;
        }
        temp = temp.next;
      }
    }
  }

  middle() {
    Node<T>? fast = head;
    Node<T>? slow = head;

    // Loop until fast reaches the end of the list
    while (fast != null && fast.next != null) {
      slow = slow?.next; // Move slow pointer by one
      fast = fast.next?.next; // Move fast pointer by two
    }

    // Print the data of the middle node
    if (slow != null) {
      print(slow.data);
    }
  }
}

void main() {
  var sample = singleList();
  sample.append(1);

  sample.append(4);
  sample.append(5);
  // sample.inserafter(0, 2);
  //sample.traverse();
  sample.middle();
  // sample.swape();
}
