void main() {
  final sort = ['a', 'b', 'c'];
  Sort().sortNumber<String>(sort);
  Sorted<String>().sortNumber(sort);
}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}

class Sort {
  Sort();

  void sortNumber<T extends Comparable>(List<T> sortNum) {
    var max = sortNum[0];

    for (int i = 0; i < sortNum.length - 1; i++) {
      for (int j = 0; j < sortNum.length; j++) {
        if (sortNum[i].compareTo(sortNum[j]) > 0) {
          max = sortNum[i];
          sortNum[i] = sortNum[j];

          sortNum[j] = max;
        }
      }
    }
    print(sortNum);
    //print(max);
  }
}

class Sorted<T extends Comparable> {
  Sorted();

  void sortNumber(List<T> sortNum) {
    for (int i = 0; i < sortNum.length - 1; i++) {
      for (int j = 0; j < sortNum.length; j++) {
        if (sortNum[i].compareTo(sortNum[j]) > 0) {
          T max = sortNum[i];
          sortNum[i] = sortNum[j];
          sortNum[j] = max;
        }
      }
    }
    print(sortNum);
  }
}
