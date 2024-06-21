class Graph {
  Map<int, List<int>> map = {};

  //this funtion for  easy to make code
  _insert(int data) {
    map.putIfAbsent(data, () => []);
  }

  void insert(int vertex, int edge, bool isBidirectional) {
    if (!map.containsKey(vertex)) {
      _insert(vertex);
    }
    if (!map.containsKey(edge)) {
      _insert(edge);
    }
    map[vertex]?.add(edge);
    if (isBidirectional) {
      map[edge]?.add(vertex);
    }
  }

  void printGraph() {
    for (var i in map.entries) {
      print('${i.key}: ${i.value}');
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
