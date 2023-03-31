void main() {
  // make list
  var list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [1, 2, 3, 4, 5];
  print("list1 : $list1");
  print("list2 : $list2");
  // list1.add("6") => error
  // list2.add("6") => error

  // Collection if
  List<int> list3 = [1, 2, 3, 4, 5, if (true) 6];
  print("list3 : $list3");

  // Collection for
  List<String> animal_in_house = ["dog", "cat"];
  List<String> animal_in_zoo = ["lion", "tiger"];
  List<String> all_animal = [
    for (var animal in animal_in_house) "🏠 $animal",
    for (var animal in animal_in_zoo) "🎉 $animal"
  ];
  print(all_animal);
  //[🏠 dog, 🏠 cat, 🎉 lion, 🎉 tiger]

  Map<String, int> score = {"math": 90, "music": 80, "english": 70};
  print(score);

  Set<int> arr = {1, 2, 3, 4};
  arr.add(1);
  arr.add(2);
  arr.add(3);
  arr.add(4);
  print(arr);
  arr.add(5);
  print(arr);
}
