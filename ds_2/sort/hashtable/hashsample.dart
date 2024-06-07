class Entry<K, V> {
  final K key;
  V value;
  Entry(this.key, this.value);
  @override
  String toString() {
    return '[$key : $value]';
  }
}

class HashTabel<K, V> {
  late List<List<Entry<K, V>>> buckets;
  static const int defaultcapacity = 10;
  HashTabel({int capacity = defaultcapacity}) {
    buckets = List<List<Entry<K, V>>>.generate(capacity, (_) => []);
  }
  int hash(K key) {
    return key.hashCode % buckets.length;
  }

  add(K key, V value) {
    int index = hash(key);
    for (var i in buckets[index]) {
      if (i.key == key) {
        i.value = value;
        return;
      }
    }
    buckets[index].add(Entry(key, value));
    return;
  }

  V? get(K key) {
    int index = hash(key);
    for (var i in buckets[index]) {
      if (i.key == key) {
        return i.value;
      }
    }
    return null;
  }

  display() {
    for (var i = 0; i < buckets.length; i++) {
      print('bucket $i :  ${buckets[i]}');
    }
  }

  displayCount() {
    int maxCount = 0;
    int maxCountInd = -1;
    for (var i = 0; i < buckets.length; i++) {
      int currentCount = buckets[i].length;
      if (currentCount > maxCount) {
        maxCount = currentCount;
        maxCountInd = i;
      }
    }
    print('maximum $maxCount data found in bucket[$maxCountInd]');
  }
}

void main() {
  HashTabel hashTabel = HashTabel();
  hashTabel.add(1, 1);
  hashTabel.add(2, 2);
  hashTabel.add(3, 3);
  hashTabel.add(4, 3);
  hashTabel.add(11, 3);
  hashTabel.add(21, 3);
  hashTabel.add(31, 3);

  hashTabel.add(10, 3);
  hashTabel.add(20, 3);
  hashTabel.add(30, 3);
  hashTabel.add(40, 3);
  hashTabel.add(50, 3);
  hashTabel.display();
  hashTabel.displayCount();
}
