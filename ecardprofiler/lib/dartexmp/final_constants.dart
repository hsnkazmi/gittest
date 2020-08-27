/*  final and const are same but final values can be changed in run time when using  
static it vecoms class property so to use its variable it must be called by 
class name like Person.Age */
class person {
  static const int Age = 10;

  final String Name;

  person(this.Name);

//? constructors
  /* person(this.Name, [this.Age = 10]);

  person.p(this.Name, this.Age, String lov);

  void showoutput() {
    print(Name);
    print(Age);
  } */
}

void main() {
//? Final and Const
  var p1 = person("sjaj");
  //print(p1.Name);
//  print(person.Age);

  //? constructor
/*   person p1 = person("shah");
  p1.showoutput();
  person p2 = person.p("shah2", 30, "love");
  p2.showoutput(); */
}
