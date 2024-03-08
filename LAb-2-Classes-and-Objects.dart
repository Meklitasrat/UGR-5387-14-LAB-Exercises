voidmain() {
  Student student = Student("John", 18, "New York", 123, [85, 90, 95]);
  student.total();
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

class Student extends Person {
  int rollNumber;
  List<int> Marks;

  Student(String name, int age, String address, this.rollNumber, this.Marks)
      : super(name, age, address);

  total() {
    int sum = 0;
    for (int i in Marks) {
      sum += i;
    }
    print(sum);
  }
}
