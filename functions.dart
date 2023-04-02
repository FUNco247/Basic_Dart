void main() {
  print(hello("Creang"));

  print(unnamedParams("mochi", 20));

  print(optionalUnnamedParams("Creang", 20));
  print(optionalUnnamedParams("Creang", 20, "South-Korea"));

  // named parameter 를 사용하면  함수 인자의 순서를 외울 필요 없이 사용할 수 있다.
  // named params <-> positional params
  print(namedParams1(age: 20, name: "mochi"));
}

String hello(String name) {
  return "Hello $name";
}

String unnamedParams(String name, int age) {
  return "My name is $name and $age year-old";
}

String optionalUnnamedParams(String name, int age,
    [String? country = "korea"]) {
  return "My name is $name and $age year-old from $country";
}

String namedParams1({String name: "un named", int age: 0}) {
  return "My name is $name and $age year-old";
  // named params를 사용할 때는 함수를 사용할 때 null-safty를 위해 default value를 설정하는 방법.
}

String namedParams2({required String name, required int age}) {
  return "My name is $name and $age year-old";
  // named params를 사용할 때는 함수를 사용할 때 null-safty를 위해 필수 입력으로 설정하는 방법.
  // 사용할 때 필수 params가 없으면 경고를 줌
}
