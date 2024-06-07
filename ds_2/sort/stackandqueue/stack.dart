class Node<T> {
  Node<T>? next;
  T data;
  Node(this.data);
}

class Stack<T> {
  Node<T>? top;
  void push(T data) {
    Node<T> newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void display() {
    Node<T>? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void pop() {
    if (top == null) {
      print('stack is mt');
    }
    if (top?.next != null) {
      top = top?.next;
    } else {
      top = null;
    }
  }

  removeSpecificNode(T data) {
    Node<T>? temp = top;
    Node<T>? prew;
    if (temp?.data == data && temp != null) {
      top = temp.next;
      return true;
    }
    while (temp != null && temp.data != data) {
      prew = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return false;
    }
    if (temp.data == data) {
      prew?.next = temp.next;
      return true;
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  // stack.pop();
  // stack.pop();
  print(stack.removeSpecificNode(3));

  stack.display();
}
