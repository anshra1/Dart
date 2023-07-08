void main() {
  final ansh = AddName('ansh ');
  final raj = AddName('raj');
  final fullName = ansh + raj;
  print(fullName);

}

class AddName {
  final String name;

  const AddName(this.name);

  // AddName operator +(AddName other) {
  //   return AddName(name + other.name);
  // }

  @override
  String toString(){
    return '$name';
  }
}


extension Add on AddName{
  AddName operator +(AddName other){
    return AddName(this.name + other.name);
  }
}
