class Node<T> {
  T data;
  Node<T>? next;
  Node(this.data);
}

class Queue<T> {
  Node<T>? front;
  Node<T>? rear;
  void enqueue(T data) {
    Node<T> newnode = Node(data);
    if (front == null) {
      front = rear = newnode;
    } else {
      rear?.next = newnode;
      rear = newnode;
    }
  }

  void dequeue() {
    if (front == null) {
      print(' list is an empty list');
    }
    if (front?.next != null) {
      front = front?.next;
    } else {
      front = null;
      rear = null;
    }
  }

  void display() {
    Node<T>? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.display();
}
