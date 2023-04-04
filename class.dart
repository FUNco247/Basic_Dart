// basic class in Dart
class Player {
  String name = "Creang";
  int age = 20;
  String team = "red";
  void sayHello() {
    print("Hello my name is $name $age yars old in $team team");
  }
}

void main() {
  var player = Player();
  player.sayHello();
}
