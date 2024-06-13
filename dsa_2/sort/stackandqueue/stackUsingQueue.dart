class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class Queue<T> {
  Node<T>? front;
  Node<T>? rear;

  enqueue(T data) {
    Node<T> newNode = Node(data);
    if (isEmpty) {
      front = rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

  T? dequeue() {
    if (isEmpty) return null;
    T? data = front?.data;
    front = front?.next;
    return data;
  }

  bool get isEmpty => front == null;
}

class StackUsingQueue<T> {
  Queue queue1 = Queue();
  Queue queue2 = Queue();
  Node<T>? top;
  push(T data) {
    queue1.enqueue(data);
    if (!queue2.isEmpty) {
      while (!queue2.isEmpty) {
        queue1.enqueue(queue2.dequeue());
      }
    }
    var temp = queue1;
    queue1 = queue2;
    queue2 = temp;
  }

  T? pop() {
    if (queue2.isEmpty) return null;
    return queue2.dequeue();
  }

  bool get isEmpty => queue1.isEmpty && queue2.isEmpty;
}

void main() {
  StackUsingQueue stackUsingQueue = StackUsingQueue();
  stackUsingQueue.push(1);
  stackUsingQueue.push(2);
  stackUsingQueue.push(3);
  print(stackUsingQueue.pop());
  print(stackUsingQueue.pop());
  print(stackUsingQueue.pop());
  print(stackUsingQueue.pop());
}
