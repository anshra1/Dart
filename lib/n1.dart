void main() {
  final mom = FamilyMember(name: 'mom');
  final dad = FamilyMember(name: 'dad');
  final family = mom + dad;
  print(family);

}

class FamilyMember {
  final String name;

  const FamilyMember({required this.name});

  @override
  String toString() {
    return 'Family Member (name = $name)';
  }
}

class Family {
  final List<FamilyMember> members;

  Family({required this.members});

  @override
  String toString() {
    return 'Family (name = $members)';
  }
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) {
    return Family(members: [this, other]);
  }
}
