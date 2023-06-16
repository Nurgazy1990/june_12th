// Создайте класс Animal (животное) с полем name (имя) и методом makeSound(),
// который выводит звук, издаваемый животным.
// Создайте два производных класса: Dog (собака) и Cat (кошка).
// Переопределите метод makeSound() для каждого из этих классов,
//  чтобы он выводил соответствующий звук.
//  Создайте массив животных и вызовите метод makeSound() для каждого из них.

void main() {
  Cat a = Cat(name: 'Mura');
  Dog b = Dog(name: 'Sharik');
  List<Animal> c = [a, b];
  for (int i = 0; i < c.length; i++) {
    print(c[i].makeSound());
  }
}

abstract class Animal {
  String name;
  Animal({required this.name});
  makeSound();
}

class Dog implements Animal {
  @override
  String name;
  Dog({required this.name});

  @override
  makeSound() {
    String sound = 'Gav guv Gav';
    return sound;
  }
}

class Cat implements Animal {
  @override
  String name;
  Cat({required this.name});

  @override
  makeSound() {
    String sound = 'Miaouao';
    return sound;
  }
}
