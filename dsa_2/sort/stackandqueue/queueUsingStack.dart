class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class Stack<T> {
  Node<T>? top;
  bool get isEmpty => top == null;
  push(T data) {
    Node<T> newnode = Node(data);

    newnode.next = top;
    top = newnode;
  }

  T? pop() {
    if (isEmpty) return null;
    T data = top!.data;
    top = top?.next;
    return data;
  }
}

class QueueUsingStack<T> {
  Stack<T> stack1 = Stack<T>();
  Stack<T> stack2 = Stack<T>();

  enqueue(T data) {
    stack1.push(data);
  }

  T? dequeue() {
    if (isEmpty) return null;
    if (stack2.isEmpty) {
      while (!stack1.isEmpty) {
        stack2.push(stack1.pop()!);
      }
    }
    return stack2.pop();
  }

  bool get isEmpty => stack1.isEmpty && stack2.isEmpty;
}

void main() {
  QueueUsingStack<int> queueUsingStack = QueueUsingStack();
  queueUsingStack.enqueue(1);
  queueUsingStack.enqueue(2);
  queueUsingStack.enqueue(3);
  print(queueUsingStack.dequeue());
  print(queueUsingStack.dequeue());
  print(queueUsingStack.dequeue());
}
