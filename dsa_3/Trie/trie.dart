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

  // this fucton for prefix
  bool searchprefix(String words) {
    TrieNode current = root;
    for (var char in words.split('')) {
      if (!current.character.containsKey(char)) {
        return false;
      }
      current = current.character[char]!;
    }
    return true;
  }
}

//-------------------------------------------------------------------------------------------------------------
class TrieSuffex {
  TrieNode root = TrieNode();

  insert(String word) {
    for (var i = 0; i < word.length; i++) {
      String char = word.substring(i);
      _insertSuffex(char);
    }
  }

  _insertSuffex(String suffix) {
    TrieNode current = root;
    for (var char in suffix.split('')) {
      current.character.putIfAbsent(char, () => TrieNode());
      current = current.character[char]!;
    }
    current.endOfNode = true;
  }

  bool? searchSuffix(String word) {
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
  print(trie.searchprefix('ad'));
  print('----------------\n');
  TrieSuffex trieSuffex = TrieSuffex();
  trieSuffex.insert('adil');
  print(trieSuffex.searchSuffix('dil'));
}
