personInfo ({String? name, int? age, String? gender}) {
  print('Hi i am $name and i am $age years old, $gender');
}

main() {

  personInfo(name: "Albert", gender: "Male",  age: 25);
  personInfo(age: 25, gender: "Female", name: "Soyti");
  personInfo(name: "Heaven", age: 33, gender: "doable");

}
