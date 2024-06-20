class TrieNode {
  Map<String, TrieNode> character = {};
  bool endOfNode = false;
}

class Trie {
  TrieNode root = TrieNode();

  insert(String words) {
    TrieNode current = root;
    for (var i = 0; i < words.length; i++) {
      String char = words[i];
      current.character.putIfAbsent(char, () => TrieNode());
      current = current.character[char]!;
    }
    current.endOfNode = true;
  }

  bool? search(String word) {
    TrieNode current = root;

    for (var char in word.split('')) {
      if (!current.character.containsKey(char)) {
        return false;
      }
      current = current.character[char]!;
    }
    return current.endOfNode;
  }
}

void main() {
  Trie trie = Trie();
  trie.insert('adil');
  trie.insert('india');
  trie.insert('its');
  print(trie.search('adil'));
}
