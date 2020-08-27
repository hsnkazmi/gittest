class num {
  int n = 12;
}

//! ...null operators
void main() {
  //!....  .? ?? ??=
  // var  c;// = num();
  //   int b = c?.n; //? print (b) will show null not eroor
//   print(c ?? 10); //?if c is null then print 10

  //   print(c ??=10); //?if c is null then defualt value 10
  // print(c);
  //   int  n = 12;
  //! sing if condition ? 'if true':'if false'
  // print( n%6 == 0 ? 'even' : 'odd');
  //!.... conditional statements
// If(){}
// Elseif(){}
// Else(){}
  //!....  swithc cases
// switch (n) {
//   case 0:
//   Pri(),
//   break;
//     Case 2:
//   Print(),
//     break;
//   default:
  //!....  standard loops
//  for (var i = 2; i<=23; i++){statments}
  //!for in loop
//  var numbers = [1,2,3];
// for (var n in numbers){ print (n);}
  //!forEach loop
//  var numbers = [1,2,3];
  //numbers.forEach();
  //print(n);
// numbers.forEach((n) => print (n)); //? and also nameless function (n)
  //!....  continue and break
//  for (var i = 2; i<=23; i++){
  //  if(i == 5) continue;
  //!5 wil be skipped while other loop will run normally
  //!break to stop the loop
  //  print(i);
  //! ...collections
  //! list
  List<int> a = [1, 2, 3, 4];
  // simply called array
  // List <int> a = const [1,2,3];
  var b = [...a];
  /*now the list b isnot linked with 
  list a resultantly lit b will not show updated resulsts
  while not using triple dot list b will be linked with 
  list a not show updated reults*/
  // a[1] = 100; // cant assign while list is const
  //print(a[1]);
  //print(b[1]);
  // for (var c in b){print (c);}
  // for (var c in a){print (c);}
  //! set
  // var names = {'orang','bnana','orang'};
  // for(var nms in names){print(nms);} // it is collection of objects will not print duplicates
  // var names = {} it is hashmap and var names = <string>{} now it is hashset
  //! map
//   var mapnames = {1:'orang','bb':'bnana',3:'orang'};
//   print(mapnames['bb']);

//or
// var gifts = Map();
// gifts[1] = 'kukar';
// gifts[2] = 'murgha';
//   print(gifts[n]);
  //!....FUNCTIONS
  showoutput(square("e")); // functions

  //! nameless functions
  var alist = [1, 2, 3];
  //print(alist.runtimeType);
  //alist.forEach((items) => print(items)); //here a functions dosenot hav name
//same as .foreach(printfunction) ... printfunction(var items) =>print(items)

  //!  functions parameters positional and named parameters
//print (some(2 , b:2));
//named
  print(some(5, 3));
  print(some(3));
} //! end of main function

//! functions
square(var nmber) {
  // its type is dynamic by default it may reutn integer or duboll string etc
  return nmber + nmber;
}

//!fat arrow notation no need to type return
square2(var num) => num + num;

void showoutput(var msg) {
  // void as it is not returning anything
  //print(msg);
}

//! postional parameters
//some(var a , var b) => a+b;
//!named parameters
//some(var a, {var b = 0}) => a + b;  // defualt value will b 0 if not provided by method
some(var a, [var b]) =>
    a +
    (b ??
        0); // optional valueed defualt value will b 0 if not provided by method
