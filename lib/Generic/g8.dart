void main() {
  sort(ascending: false);
  sort(ascending: true);
}

const ages = [100, 50, 79, 40];
const names = ['krish', 'ram', 'vashn', 'shiv'];
const distance = [1.2, 34.5, 25.6, 34.5];

int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);

int isGreaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool ascending}) {
  final comparetor = ascending ? isLessThan : isGreaterThan;
  print([...ages]..sort(comparetor));
  print([...names]..sort(isLessThan));
  [...distance].sort(comparetor);
 print( [...names]..sort((a, b) => a.length.compareTo(b.length)));
}

extension Print on List {
  printFirst() {
    print(this);
  }

  printSecond() => this;
}
