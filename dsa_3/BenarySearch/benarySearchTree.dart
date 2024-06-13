import 'dart:math' as math;

class Node<T> {
  int data;
  Node<T>? left;
  Node<T>? right;
  Node(this.data);
}

class BinarySearchTree<T> {
  Node<T>? root;

  void insert(int data) {
    Node<T> newNode = Node(data);
    Node<T>? current = root;
    if (current == null) {
      root = newNode;
      return;
    }
    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = newNode;
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = newNode;
          break;
        } else {
          current = current.right;
        }
      }
    }
  }

  bool contain(int data) {
    if (root == null) return false;

    Node<T>? current = root;
    while (current != null) {
      if (data < current.data) {
        current = current.left;
      } else if (data > current.data) {
        current = current.right;
      } else {
        return true;
      }
    }
    return false;
  }

  // fintClosetValue(T target) {
  //   Node<T>? current = root;
  //   int closetdata = current!.data;
  //   while (current != null) {
  //     if ((target - closetdata).abs() > (target - current.data).abs()) {
  //       closetdata = current.data;
  //     }
  //     if (target < current.data) {
  //       current = current.left;
  //     } else if (target > current.data) {
  //       current = current.right;
  //     } else {
  //       break;
  //     }
  //   }
  //   return closetdata;
  // }

//------------------------------
  inOrder() {
    inOrderHelper(root);
  }

  inOrderHelper(Node<T>? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print(node.data);
      inOrderHelper(node.right);
    }
  }

  //----------------------------
//------------------------------
  preOrder() {
    preOrderHelper(root);
  }

  preOrderHelper(Node<T>? node) {
    if (node != null) {
      print(node.data);
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  //----------------------------
//------------------------------
  postOrder() {
    postOrderHelper(root);
  }

  postOrderHelper(Node<T>? node) {
    if (node != null) {
      postOrderHelper(node.left);
      postOrderHelper(node.right);
      print(node.data);
    }
  }
  //----------------------------
}

void main() {
  BinarySearchTree binarySearchTree = BinarySearchTree();

  binarySearchTree.insert(10);
  binarySearchTree.insert(8);
  binarySearchTree.insert(11);
  binarySearchTree.insert(4);
  binarySearchTree.insert(9);
  // print(binarySearchTree.contain(50));
  binarySearchTree.inOrder();
  print('------ ');
  binarySearchTree.preOrder();
  print('------ ');
  binarySearchTree.postOrder();
}
