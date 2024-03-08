void main() {
  Person Person1 = Person("Niyat", 21, "Addis Ababa");
  print(Person1.name);
  Person1.age = 22;
  print(Person1.age);
}

class Person {
  String name = 'Mek';
  int age = 21;
  String address = 'addisababa';

  Person(String name, int age, String address) {
    this.name = name;
    this.age = age;
    this.address = address;
  }
}
