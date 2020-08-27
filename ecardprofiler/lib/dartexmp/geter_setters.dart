class Vehicle {
  String make;
  String model;
  int manufactureYear;
  int vehicleAge;
  String color;

  // We can also eliminate the setter and just use a getter.
  //int get age {
  //  return DateTime.now().year - manufactureYear;
  //}
  int get Age {
    return vehicleAge;
  }

  set Age(int cyear) {
    vehicleAge = cyear - manufactureYear;
  }

  Vehicle({
    this.make,
    this.model,
    this.manufactureYear,
    this.color,
  });
}

void main() {
  Vehicle car = Vehicle(
      make: "Honda", model: "Civic", manufactureYear: 2010, color: "red");
  car.Age = 2020;
  print(car.Age);
}

/* class Rectangle {
  int left, top, width, height;
  Rectangle(this.top, this.left, this.width, this.height);

  int get right => left + width;
  set right(int valu) => left = valu - width;
    
}

main() {
  var rect = Rectangle(2, 3, 4, 5);
//  print(rect.left);
  print(rect.right);

  rect.right = 10;
  print(rect.right);

  //print(rect.left);
}
 */
