# Dart for beginner from [nomadcoders.co](https://nomadcoders.co/dart-for-beginners/lectures/4092)

## I practice on [dartpad.dev : playground for dart language](https://dartpad.dev/?)

## Also I make .dart files for each chapters on my local

<hr />

### 0. hello world : main functions, semicolon

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

- Dart의 null safety(널 안전성)은 코드에서 예기치 않은 null 값으로 인한 오류를 방지하기 위한 기능입니다. null safety는 Dart 2.12 버전에서 처음 도입되었습니다.
- Dart의 null safety는 변수의 null 여부를 명시적으로 지정하여, 컴파일 시간에 null 예외를 방지합니다. 예를 들어, 다음과 같은 코드에서 name 변수가 null인 경우, 컴파일러는 경고를 표시합니다:

```dart
String? name; // ?를 붙여 null 값이 될 수 있음을 명시
print(name.length); // 컴파일러에서 경고: The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
```

- 코드에서 name 변수는 null 값을 가질 수 있도록 String?으로 선언되었습니다. 그러나 length 속성은 null 값에서 호출할 수 없으므로, 컴파일러는 경고를 표시합니다.
- null safety를 사용하면 코드에서 null 예외를 방지할 수 있으며, 이는 코드의 안정성을 높이고 유지보수성을 향상시킵니다. 따라서 Dart에서는 null safety가 권장되는 기능입니다.
