class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class SinglyLinkedList<T> {
  Node<T>? head;
  Node<T>? tail;
  //----------------------------------------------------------------------------
  // Add a new node to the end of the list
  void appendcorrect(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode; // Link the new node to the end of the list
      tail = newNode; // Update the tail to the new node
    }
  }

//----------------------
  void append(T data) {
    if (head == null) {
      head = Node(data);
      tail = Node(data);
    } else {
      tail?.next = Node(data); // Link the new node to the end of the list
      tail = Node(data);
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
        if (tail?.data == data) {
          tail = current;
        }
        return;
      }
      current = current?.next;
    }
  }

  void insertAfter(T nextTo, T data) {
    Node<T>? temp = head;
    Node<T> putData = Node(data);

    // Traverse to find the node with data 'nextTo'
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }

    // If the node with 'nextTo' data is not found, return
    if (temp == null) {
      return;
    }

    // If inserting after the tail node
    if (temp == tail) {
      tail?.next = putData;
      tail = putData;
      return;
    }

    // Insert the new node after the found node
    putData.next = temp.next;
    temp.next = putData;
  }
}

void main() {
  var sample = SinglyLinkedList<int>();
  sample.append(1);
  sample.append(2);
  sample.append(3);
  sample.append(4);

  sample.insertAfter(2, 22);
  // sample.delete(1);

  sample.printdata();
}
