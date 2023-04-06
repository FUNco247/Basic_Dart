// basic class in Dart
class Player {
  String name = "Creang";
  int age = 20;
  String team = "red";
  void sayHello() {
    print("Hello my name is $name $age yars old in $team team");
  }
}

class Player2 {
  String name;
  int age;
  String team;

  //named params constructor
  Player2({
    required this.name, // required keyword should be added cause this params don't allowed to be null
    required this.age, // required keyword should be added cause this params don't allowed to be null
    required this.team, // required keyword should be added cause this params don't allowed to be null
  });
  void sayHello() {
    print("Hello my name is $name $age yars old in $team team");
  }
}

class Player3 {
  String name, team;
  int age;

  //positional params constructor
  Player3(
    this.name, // required by default
    this.age, // required by default
    this.team, // required by default
  );
  void sayHello() {
    print("Hello my name is $name $age yars old in $team team");
  }
}

class Person {
  String name;

  Person(this.name);

  void sayHello() {
    print('Hello, my name is $name');
  }
}

class Student extends Person {
  String major;

  Student(String name, this.major) : super(name);

  void sayMajor() {
    print('My major is $major');
  }
}

class Animal {
  void sayHello() {
    print('Hello from the Animal class');
  }
}

class Dog extends Animal {
  @override
  void sayHello() {
    print('Hello from the Dog class');
  }
}

class Person1 {
  String name;

  Person1(this.name);

  void sayHello() {
    print('Hello, my name is $name');
  }
}

class Student1 extends Person1 {
  String major;

  Student1(String name, this.major) : super(name);

  @override
  void sayHello() {
    super.sayHello();
    print('I am studying $major');
  }
}

abstract class Animal1 {
  void makeSound();
}

class Dog1 extends Animal1 {
  void makeSound() {
    print('Bark!');
  }
}

void main() {
  var player = Player();
  player.sayHello();

  var player2 = Player2(name: "Creang", team: "blue", age: 20);
  player2.sayHello();

  var player3 = Player3("Creang", 20, "purple");
  player3.sayHello();

  var student = Student('John', '컴퓨터 과학');
  student.sayHello();
  student.sayMajor();

  var dog = Dog();
  dog.sayHello();

  var student1 = Student1('John', '컴퓨터 과학');
  student1.sayHello();

  var dog1 = Dog1();
  dog1.makeSound();
}
