
void main() {
  Animal dog = AnimalFactory.createAnimal('Dog');
  dog.speak(); // Outputs: Woof!

  Animal cat = AnimalFactory.createAnimal('Cat');
  cat.speak();
}

abstract class Animal {
  void speak();
}

class Dog implements Animal {
  @override
  void speak() {
    print('Woof!');
  }
}

class Cat implements Animal {
  @override
  void speak() {
    print('Meow!');
  }
}

class AnimalFactory {
  static Animal createAnimal(String type) {
    if (type == 'Dog') {
      return Dog();
    } else if (type == 'Cat') {
      return Cat();
    } else {
      throw Exception('Invalid animal type');
    }
  }
}