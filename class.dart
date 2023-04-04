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

  Player2({
    required this.name, // required keyword should be added cause this params don't allowed to be null
    required this.age, // required keyword should be added cause this params don't allowed to be null
    required this.team, // required keyword should be added cause this params don't allowed to be null
  });
  void sayHello() {
    print("Hello my name is $name $age yars old in $team team");
  }
}

void main() {
  var player = Player();
  player.sayHello();

  var player2 = Player2(name: "Creang", team: "blue", age: 20);
  player2.sayHello();
}
