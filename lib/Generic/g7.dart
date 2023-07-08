void main() {
  final l = Toupled(left: 1, right: 2);
  l.printFirst();
  l.swap().printFirst();
  l.sum.printFirst();
}

extension on Object {
  void printFirst() {
    print(this);
  }
}

class Toupled<L, R> {
  final L left;
  final R right;

  Toupled({required this.left, required this.right});

  @override
  String toString() => 'left is $left right is $right';
}

extension<L, R> on Toupled<L, R> {
  Toupled<R, L> swap() {
    return Toupled(left: right, right: left);
  }
}

extension<L extends num,R extends num> on Toupled<L,R> {
  num get sum => left + right;
}
