void main() {
  twoTypeSearch(1, 4).printFirst();
  twoTypeSearch(1, 1.3).printFirst();
  twoTypeSearch('fla', 'bar').printFirst();
  twoTypeSearch(true, 1).printFirst();
}

bool twoTypeSearch<L,R>(L a,R b) => a == b;

// bool twoTypeSearch(Object a,Object b)  => a.runtimeType == b.runtimeType;

extension Print on Object {
  void printFirst() {
    print(this);
  }
}
