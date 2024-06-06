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
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop();
  stack.push(4);
  stack.display();
}
