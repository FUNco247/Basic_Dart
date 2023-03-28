void main() {
  var name = "크리앙"; // Dart know name is String
  name = "Creang"; // reasign is OK but should not change type.
  String name2 = "크리앙"; // same as like 2
  print(name + " is " + name2);
}

void null_saftly() {
  String? apple; // ?를 붙여 null 값이 될 수 있음을 명시
  //print(apple.length); -> 컴파일러에서 null이 될 수 있음을 경고:
  if (apple != null) {
    print(apple.length); //OK
  }
}
