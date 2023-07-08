abstract class AbstractClass<T> {
  T data;

  AbstractClass(this.data);

  void processData();

  T getData();
}

class ConcreteClass<T> extends AbstractClass<T> {
  ConcreteClass(T data) : super(data);

  @override
  void processData() {
    print('Processing data: ${getData()}');
    getData();
  }

  @override
  T getData() {
    return data;
  }
}

void main() {
  ConcreteClass<String> concreteObj = ConcreteClass<String>('Hello, World!');
  concreteObj.processData();
}
