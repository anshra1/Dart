void main() {
  AnimalType.cat.jumping();
}

enum AnimalType {
  dog,
  cat,
  fox;

  void jumping() {
    print('running');
  }
}
