class Entry<K, V> {
  final K key;
  V value;
  Entry(this.key, this.value);
  @override
  String toString() {
    return '[$key :$value]';
  }
}

class HashTabel<K, V> {
  late List<List<Entry<K, V>>> buckets;
  static const int defaultCapacity = 10;
  HashTabel({int capacity = defaultCapacity}) {
    buckets = List<List<Entry<K, V>>>.generate(capacity, (_) => []);
  }
  int hash(K key) {
    return key.hashCode % buckets.length;
  }

  void add(K key, V value) {
    int index = hash(key);
    for (Entry<K, V> entry in buckets[index]) {
      if (entry.key == key) {
        entry.value = value;
        return;
      }
    }
    buckets[index].add(Entry(key, value));
  }

  V? get(K key) {
    int index = hash(key);
    for (Entry<K, V> entry in buckets[index]) {
      if (entry.key == key) {
        return entry.value;
      }
    }
    return null;
  }

  void displayBucketCount() {
    int maxCount = 0;
    int maxCountInd = 0;
    for (var i = 0; i < buckets.length; i++) {
      int curretCount = buckets[i].length;
      if (curretCount > maxCount) {
        maxCount = curretCount;
        maxCountInd = i;
      }
    }
    print(
        'maximum count found in buckt[${maxCountInd}] have $maxCount datas  ');
  }

  void displayTable() {
    for (var i = 0; i < buckets.length; i++) {
      print(' bucket $i :${buckets[i]}');
    }
  }

  void remove(K key) {
    int index = hash(key);
    buckets[index].removeWhere((element) => element.key == key);
  }
}

void main() {
  HashTabel hashTabel = HashTabel();

  hashTabel.add('one', 1);
  hashTabel.add('two', 2);
  hashTabel.add('tree', 3);
  hashTabel.remove('one');
  hashTabel.remove('two');
  hashTabel.remove('tree');
  hashTabel.displayTable();
  hashTabel.displayBucketCount();
}
