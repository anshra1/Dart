void main() {
  const names = ['ansh', 'raj', 'flutter', 'developer'];
  print(names * 2);
}

// extension Times<T> on Iterable<T> {
//   Iterable<T> operator *(int times) sync* {
//     for (var i = 0; i < times; i++) {
//       yield* this;
//     }
//   }

extension Time<T> on Iterable<T> {
  Iterable<T> operator *(int times) {

    final List<T> result = [];
    for (var i = 0; i < times; i++) {
      result.addAll(this);
    }
    return result;
  }
}
