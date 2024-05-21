
/*


Singly Linked List Overview
A singly linked list is a data structure that consists of a sequence of nodes. Each node contains:

Data: The value stored in the node.
Next: A reference to the next node in the sequence.
The list starts with a head node, and the last node points to null, indicating the end of the list.

Node Class
First, let's define the Node class. Each Node contains data and a reference to the next node.

dart
Copy code
class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}
Singly Linked List Class
Next, we define the SinglyLinkedList class, which manages the nodes.

dart
Copy code
class SinglyLinkedList<T> {
  Node<T>? head;

  // Add a new node to the end of the list
  void append(T data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node<T> current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(data);
    }
  }

  // Print all the nodes in the list
  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  // Find a node with the specified data
  Node<T>? find(T data) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == data) {
        return current;
      }
      current = current.next;
    }
    return null;
  }

  // Delete the first node with the specified data
  void delete(T data) {
    if (head == null) return;

    if (head!.data == data) {
      head = head!.next;
      return;
    }

    Node<T> current = head!;
    while (current.next != null) {
      if (current.next!.data == data) {
        current.next = current.next!.next;
        return;
      }
      current = current.next!;
    }
  }
}
Explanation
Node Class:

Node<T>: A generic class to hold data of any type.
data: The value stored in the node.
next: A reference to the next node in the list, initialized to null.
SinglyLinkedList Class:

head: A reference to the first node in the list, initialized to null.

append(T data): Adds a new node with the given data to the end of the list.

If the list is empty (head == null), create a new node and set it as the head.
Otherwise, traverse the list to the end and add the new node.
printList(): Prints all the nodes in the list.

Traverse the list starting from the head and print each node's data.
find(T data): Finds and returns the first node with the specified data.

Traverse the list starting from the head and check each node's data.
Return the node if the data matches; otherwise, continue.
Return null if the data is not found.
delete(T data): Deletes the first node with the specified data.

If the list is empty, do nothing.
If the head node contains the data, update the head to point to the next node.
Otherwise, traverse the list to find the node before the node with the specified data and update its next reference to skip the node to be deleted.
Usage Example
Here's how you can use the SinglyLinkedList class:

dart
Copy code
void main() {
  var list = SinglyLinkedList<int>();

  list.append(1);
  list.append(2);
  list.append(3);
  list.append(4);

  print("Original list:");
  list.printList();

  print("\nFinding node with data 3:");
  var node = list.find(3);
  if (node != null) {
    print("Node found with data: ${node.data}");
  } else {
    print("Node not found");
  }

  print("\nDeleting node with data 2:");
  list.delete(2);
  list.printList();

  print("\nDeleting node with data 5 (non-existent):");
  list.delete(5);
  list.printList();
}
Explanation of Usage Example
Creating the List:

SinglyLinkedList<int>: Creates a new singly linked list that stores integers.
Appending Nodes:

list.append(1): Adds a node with data 1.
list.append(2): Adds a node with data 2.
list.append(3): Adds a node with data 3.
list.append(4): Adds a node with data 4.
Printing the List:

list.printList(): Prints the list. Initially, it will print 1, 2, 3, 4.
Finding a Node:

list.find(3): Finds the node with data 3 and prints it.
Deleting Nodes:

list.delete(2): Deletes the node with data 2 and prints the updated list. The list will now be 1, 3, 4.
list.delete(5): Attempts to delete a node with data 5 (which does not exist) and prints the list. The list remains 1, 3, 4.
By following this explanation and example, you should have a good understanding of how a singly linked list works in Dart.


*/


