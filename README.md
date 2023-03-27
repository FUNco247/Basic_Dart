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
