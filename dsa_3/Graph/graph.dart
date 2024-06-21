class Graph {
  Map<int, List<int>> graph = {};

  //this funtion for  easy to make code
  _insert(int data) {
    graph.putIfAbsent(data, () => []);
  }

  void insert(int vertex, int edge, bool isBidirectional) {
    if (!graph.containsKey(vertex)) {
      _insert(vertex);
    }
    if (!graph.containsKey(edge)) {
      _insert(edge);
    }
    graph[vertex]?.add(edge);
    if (isBidirectional) {
      graph[edge]?.add(vertex);
    }
  }

  void printGraph() {
    for (var i in graph.entries) {
      print('${i.key}: ${i.value}');
    }
  }

  //deleting a vertex in graph
  delete(int vertex) {
    graph.remove(vertex);
    graph.forEach((key, value) {
      graph[key]!.remove(vertex);
    });
    print(graph);
  }

  //breadth first search : choose an initial vertex and go through all its edges and then check wheather traversal is completed
  //if not go to next vertex and repeats the same process again
  bfs(int vertex) {
    List<int> visited = [vertex];
    List<int> queue = [vertex];
    while (visited.length != graph.length) {
      if (queue.isEmpty) {
        queue.add(graph.keys.toSet().difference(visited.toSet()).first);
        visited.add(queue.first);
        print(queue);
      }
      var current = queue[0];
      queue.removeAt(0);
      for (var val in graph[current]!) {
        if (!visited.contains(val)) {
          visited.add(val);
          queue.add(val);
        }
      }
    }
    print(visited);
  }

  void dfs(int start) {
    Set<int> visited = {};
    dfsHelper(start, visited);
  }

  void dfsHelper(int vertex, Set<int> visited) {
    visited.add(vertex);
    print(vertex);

    List<int>? neighbors = graph[vertex];
    if (neighbors != null) {
      for (int neighbor in neighbors) {
        if (!visited.contains(neighbor)) {
          dfsHelper(neighbor, visited);
        }
      }
    }
  }
}

void main() {
  Graph graph = Graph();

  // Insert edges
  graph.insert(10, 20, true);
  graph.insert(10, 43, false);
  graph.insert(43, 61, false);
  graph.insert(36, 43, false);
  graph.insert(36, 5, false);
  graph.insert(5, 61, false);
  graph.insert(20, 5, false);

  // Print the adjacency list of the graph
  graph.printGraph();
}
