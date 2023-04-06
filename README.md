# Dart for beginner from [nomadcoders.co](https://nomadcoders.co/dart-for-beginners/lectures/4092)

## I practice on [dartpad.dev : playground for dart language](https://dartpad.dev/?)

## Also I make .dart files for each chapters on my local

<hr />

### 0. hello world : main functions, semicolon is uper required

### 1. Variables (variables.dart) :

**var & Type of data**

- int: 정수 값을 나타내는 타입입니다. 예를 들어, `int age = 25`와 같이 사용할 수 있습니다.
- double: 부동 소수점 숫자 값을 나타내는 타입입니다. 예를 들어, `double price = 3.99`와 같이 사용할 수 있습니다.
- String: 문자열 값을 나타내는 타입입니다. 예를 들어, `String name = "이름"`과 같이 사용할 수 있습니다.
- bool: 불리언 값(참 또는 거짓)을 나타내는 타입입니다. 예를 들어, `bool isAvailable = true`와 같이 사용할 수 있습니다.
- List: 여러 값을 포함할 수 있는 리스트를 나타내는 타입입니다. 예를 들어, `List<int> numbers = [1, 2, 3]`와 같이 사용할 수 있습니다.
- Map: 키-값 쌍을 포함하는 맵을 나타내는 타입입니다. 예를 들어, `Map<String, int> ages = {'John': 25, 'Jane': 30}`와 같이 사용할 수 있습니다.
- dunamic : 타입이 변화하는 변수를 할당할 수 있습니다. 예를 들어

````dart
dynamic myVariable = 42;
print(myVariable); // 출력: 42
myVariable = "Hello, world!";
print(myVariable); // 출력: Hello, world!```
````

**null safty**

- Dart의 null safety(널 안전성)은 코드에서 예기치 않은 null 값으로 인한 오류를 방지하기 위한 기능입니다. 개발자가 null을 참조하지 않도록 방지합니다.
- Dart의 null safety는 변수의 null 여부를 명시적으로 지정하여, 컴파일 시간에 null 예외를 방지합니다. 예를 들어, 다음과 같은 코드에서 name 변수가 null인 경우, 컴파일러는 경고를 표시합니다:

```dart
String? name; // ?를 붙여 null 값이 될 수 있음을 명시
print(name.length); // 컴파일러에서 경고: The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
```

- 코드에서 name 변수는 null 값을 가질 수 있도록 String?으로 선언되었습니다. 그러나 length 속성은 null 값에서 호출할 수 없으므로, 컴파일러는 경고를 표시합니다.
- null safety를 사용하면 코드에서 null 예외를 방지할 수 있으며, 이는 코드의 안정성을 높이고 유지보수성을 향상시킵니다. 따라서 Dart에서는 null safety가 권장되는 기능입니다.

**final variable**

- final 키워드로 변수를 정의하면 자바사크립트의 const와 같은 용도로 사용할 수 있습니다.. (참조의 데이터 주소를 변경할 수 없다)
- `final String = "..."` 과 같이 데이터타입과 함께 사용할 수 있지만 쓰지 않아도 데이터 타입을 Dart가 잘 추론합니다.

```dart
//error
void final_variable() {
  final name = "안녕";
  name = "하세요";
}

//no error
void final_variable() {
  final name = {"a": 1};
  name["a"] = 2;
}
```

**late variable**

- late 키워드와 함께 변수를 선언하면 초기값을 할당하지 않은 채로 변수를 선언할 수 있습니다.
- late는 var 또는 final과 함께 사용할 수 있습니다.

```dart
late final String name;
// do somthing .... e.g. call api
name = "안녕";
```

**const variable**

- Dart의 const는 자바스크립트나 타입스크립트의 const와는 다릅니다.
- const는 Dart의 final과 비슷하며 **compile-time constant**를 만듭니다.
- **compile-time constant**란 APP이 컴파일되는 단계에서 이미 확정된 것으로 사용자의 런타임 환경에서 정해지는 것이 아닌 개발단계에서 이미 확정된 변수입니다. 예를들면 환경변수나 외부 api를 활용하기 위한 key 값이 될 수 있습니다.
- 사용자 런타임 환경에서 고정되는 변수는 final로 선언하는 것이 적절합니다.

```dart
//good
const api_key = "1212";
const server_adress = "https:...";

//No good
const something = get_api();
```

### 2. Data Types (data_types.dart) :

**List**

- 배열은 `var` 키워드로도 선언할 수 있고 `List<type>`의 형태로도 선언할 수 있습니다.

```dart
 void main() {
  // make list
  var list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [1, 2, 3, 4, 5];
  print("list1 : $list1");
  print("list2 : $list2");
  // list1.add("6") => error
  // list2.add("6") => error
 }
```

- Collection if : 조건이 참이라면 배열 안에 값을 추가합니다.

```dart
void main() {
  List<int> list3 = [1, 2, 3, 4, 5, if (true) 6];
  print("list3 : $list3");
}
// list3 : [1, 2, 3, 4, 5, 6]
```

- Collection for : 배열을 참조하여 값을 추가합니다.

```dart
void main() {
  // Collection for
  List<String> animal_in_house = ["dog", "cat"];
  List<String> animal_in_zoo = ["lion", "tiger"];
  List<String> all_animal = [
    for (var animal in animal_in_house) "🏠 $animal",
    for (var animal in animal_in_zoo) "🎉 $animal"
  ];
  print(all_animal);
  //[🏠 dog, 🏠 cat, 🎉 lion, 🎉 tiger]
}
```

**Map**

- Map은 자바스크립트의 object, 파이썬은 dictionary와 같습니다.
- 맵은 `var` 또는 `Map<type_of_key, type_of_value>` 로 선언할 수 있습니다.

```dart
Map<String, int> score = {"math" : 90, "music" : 80, "english" : 70};
```

- 만약 아래 코드와 같이 `value`가 여러가지 타입을 가진다면 Dart는 value의 타입을 `Object`로 추정한다. 이는 타입스크립트의 `any`와 같다고 보면 된다. (어떤 타입이던 가능)

```dart
var player = {"name" : "haha", "age":20};
// type of player is Map<String, Object>
```

**Set**

- `Set`은 기본적으로 `List`와 같지만 `Set`안에 있는 요소들은 전부 unique 하다. 파이썬의 `tuple`과 비슷하다.
- `Set`은 `var` 또는 `Set<type>`으로 선언할 수 있다.

```dart
void main() {
  Set<int> arr = {1, 2, 3, 4};
  arr.add(1);
  arr.add(2);
  arr.add(3);
  arr.add(4);
  print(arr);
  //{1, 2, 3, 4}
  arr.add(5);
  print(arr);
  //{1, 2, 3, 4, 5}
}
```

### 3. Functions (functions.dart)

Dart에서 함수는 일급 객체로 취급되어 변수에 할당하거나, 다른 함수에 매개변수로 전달하거나, 다른 함수에서 값을 반환하는 것이 가능합니다.

다음은 Dart에서 함수를 사용하는 예제입니다:

- 하나의 매개변수를 가진 기본 함수: 첫 번째 예제는 하나의 매개변수를 가진 기본 함수를 사용하는 방법을 보여줍니다. 이 함수는 이름 매개변수를 받아 사람을 인사하는 문자열을 반환합니다.

```dart
String hello(String name) {
  return "안녕하세요 $name님";
}
```

- 여러 개의 매개변수를 가진 함수:두 번째 예제는 여러 개의 매개변수를 가진 함수를 사용하는 방법을 보여줍니다. 이 함수는 이름과 나이 매개변수를 받아 사람을 설명하는 문자열을 반환합니다.

```dart
String unnamedParams(String name, int age) {
  return "$name님은 $age살 입니다.";
}
```

- 선택적 매개변수를 가진 함수:세 번째 예제는 선택적 매개변수를 가진 함수를 사용하는 방법을 보여줍니다. 이 함수는 이름과 나이 매개변수와 선택적으로 나라 매개변수를 받습니다. 나라 매개변수가 전달되지 않으면 기본값인 "한국"이 사용됩니다.

```dart
String optionalUnnamedParams(String name, int age, [String? country = "한국"]) {
  return "$name님은 $age살이고 $country에서 왔습니다.";
}
```

- 이름 있는 매개변수를 가진 함수: 네 번째와 다섯 번째 예제는 이름 있는 매개변수를 가진 함수를 사용하는 방법을 보여줍니다. 이름 있는 매개변수를 사용하면 매개변수의 순서를 유지하지 않고 함수를 호출할 수 있습니다. namedParams1에서는 이름과 나이 매개변수에 기본값이 설정됩니다. namedParams2에서는 required 키워드를 사용하여 이름과 나이 매개변수가 함수 호출에서 필요하다는 것을 보장합니다.

```dart
String namedParams1({String name: "이름 없음", int age: 0}) {
  return "$name님은 $age살 입니다.";
}
```

```dart
String namedParams2({required String name, required int age}) {
  return "$name님은 $age살 입니다.";
}
```

### 4. Class (class.dart)

**Basic class examples**

- 아래의 class는 기본값을 정의하는 형태로 선언하는 예시입니다.

```dart
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
  player.sayHello(); // Hello my name is Creang 20 yars old in red team
}
```

- 아래는 constructor를 사용하여 인스턴스를 생성하는 예시입니다. constructor는 이름이 주어진 매개변수를 받습니다.

```dart
class Player2 {
  String name;
  int age;
  String team;

  Player2({
    required this.name,
    required this.age,
    required this.team,
  });
  void sayHello() {
    print("Hello my name is $name $age yars old in $team team");
  }
}

void main() {
  var player2 = Player2(name: "Creang", team: "blue", age: 20);
  player2.sayHello(); //Hello my name is Creang 20 yars old in blue team
}
```

- 아래는 마찬가지로 constructor를 사용하여 인스턴스를 생성하는 예시입니다. constructor는 입력 위치가 정해진 매개변수를 받습니다.

```dart
class Player3 {
String name, team;
int age;

Player3(
this.name,
this.age,
this.team,
);
void sayHello() {
print("Hello my name is $name $age yars old in $team team");
}
}

void main() {
var player3 = Player3("Creang", 20, "purple");
player3.sayHello(); //Hello my name is Creang 20 yars old in purple team
}
```

**Inheritance of Class**
상속은 기존 클래스를 기반으로 새로운 클래스를 정의할 수 있는 메커니즘입니다. 새로운 클래스는 기존 클래스의 모든 속성 및 메서드를 상속하고 새로운 속성 및 메서드를 추가하거나 기존의 것을 재정의할 수도 있습니다.

- 클래스 확장 : 기존 클래스를 상속받아 새로운 클래스를 생성하려면, extends 키워드 다음에 슈퍼클래스의 이름을 사용할 수 있습니다.

```dart
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

void main(){
  var student = Student('John', '컴퓨터 과학');
  student.sayHello(); // 출력: Hello, my name is John
  student.sayMajor(); // 출력: My major is 컴퓨터 과학
}
```

- 매서드의 재정의 : 서브클래스에서 슈퍼클래스로부터 메서드를 상속받을 때, 해당 메서드를 재정의하여 새로운 구현을 제공할 수 있습니다. 메서드를 재정의하려면, @override 어노테이션을 사용합니다.

```dart
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

void main(){
  var dog = Dog();
  dog.sayHello(); // 출력: Hello from the Dog class
}
```

- super 사용 : 서브클래스에서 메서드를 재정의할 때, super 키워드를 사용하여 슈퍼클래스의 메서드를 호출할 수 있습니다.

```dart
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

  @override
  void sayHello() {
    super.sayHello();
    print('I am studying $major');
  }
}

void main(){
var student = Student('John', '컴퓨터 과학');
student.sayHello();
}

//출력
//Hello, my name is John
//I am studying 컴퓨터 과학
```

- Abstract class : 추상 클래스는 직접 인스턴스화할 수 없지만, 서브클래스에서 구현해야하는 메서드를 정의할 수 있는 클래스입니다. 추상 클래스는 abstract 키워드를 사용하여 정의할 수 있습니다.

```dart
abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  void makeSound() {
    print('Bark!');
  }
}

void main(){
var dog = Dog();
dog.makeSound(); // 출력: Bark!
}
```
