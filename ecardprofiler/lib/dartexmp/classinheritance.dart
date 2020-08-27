/* ///? Now the Class Inheritance
class Vhicle {
  var Name = "";
  int model;
  Vhicle(this.Name, this.model);
  void sho() {
    print(Name);
    print(model);
  }
}

class car extends Vhicle {
  int price;
  car(String Name, int model, this.price) : super(Name, model);
  sho() {
    super.sho();
    print(price);
  }
}

main() {
  var c = car("Name", 32, 898989);
  c.sho();
}
 */
class Superclass {
  int age;

  Superclass(this.age);

  void getAge() {
    print("The value of the variable named age in super class is: $age");
  }
}

class Subclass extends Superclass {
  Subclass(int age) : super(age);
}

void main() {
  Subclass s = new Subclass(24);
  s.getAge();
}
