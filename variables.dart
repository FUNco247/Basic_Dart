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

void final_variable() {
  final name = {"a": 1};
  name["a"] = 2;
}

void late_variable() {
  late final String name;
// do somthing .... e.g. call api
  name = "안녕";
}

void const_variable() {
  const api_key = "1212";
  const server_adress = "https:...";
  // api_key = "1"  -> error
}
