void main() {
  JSON<String> json = {
    'name': 'ansh',
    'last': '2',
  };
}

typedef JSON<T> = Map<String, T>;

extension Print on Object {
  void printFirst() {
    print(this);
  }
}
