void main() {
  const mom = {'mom': Person(), 'dad': Person()};

  const brotherAndFish = {
    'brother': Person(),
    'sister': Person(),
    'fish': Fish(),
  };

  final list = [mom, brotherAndFish];
  describe(list);
}

typedef BreathingThings<T extends canBreath> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final i in map.entries) {
      print('${i.key}');
      i.value.breath();
    }
  }
}

mixin canBreath {
  void breath();
}

class Fish with canBreath {
  const Fish();

  @override
  void breath() {
    print('Fish is Breathing');
  }
}

class Person with canBreath {
  const Person();

  @override
  void breath() {
    print('Person is breathing...');
  }
}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}
