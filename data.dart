void main() {
  // type nomVar;
  // type nomVar = valeur;
  
  /*
   * num (int / double)
   * bool
   * String
   * */
  // Class instanciation
  Person p1 = Person('Sylvia');
  print(p1.name);
  
  Person p2 = Person.fromPerson(p1);
  p2.speak();
  
  Employe e = Employe('Developer', 'Dimitry');
  e.speak();
  // Variable
  int age;
  int age2 = 25; 
  // Interpolation de String
  print('You are ' + age2.toString() + ' old');
  print('You are $age2 old');
  print('You are ${age2} old');
  
  print('In 10 years, you will be ${age2 + 10} years old');
  
  double taux = 1.5; 
  bool isMarried = false;
  
  String s1 = " \"\" ";
  String s2 = ' \'\' "" ' ;
  String msg = "Hello my friend";
  print(msg);
  
  var a = 5;
  var b = true;
  
  dynamic x = 5;
  x = true;
  x = 'Hello';
  
  // List
  List evenNumbers = [2, 4, 6, 0, 8, 2];
  print(evenNumbers[2]);
  
  List oddNumbers = [1, 3, 5,"seven", true];
  List<int> oddNumbers1 = [1, 3, 5];
  oddNumbers.add(7);
  print(oddNumbers); 
  print(oddNumbers.length);
  
  // spread operator
  var newList = [...oddNumbers, ...evenNumbers, 8, 9];
  print(newList);
  
  // Conditions
  var user = 'John';
  if(user != null){
    print('Welcome $user');
  } else {
    print('Welcome visiteur');
  }
  
  print('Welcome ${user ?? 'visitor'}');// When $user ist null, returns defaut value 'visitor'
  
  if(user == 'John')
    print('Admin access');
  
  // Loop
  for (var i = 0; i < 5; i++) {
    print('$i');
  }
  
  var players = ['John', 'Martin', 'Melissa'];
  for (var i = 0; i < players.length; i++) {
    print(players[i]);
  }
  
  for (var player in players){
    print(player);
  }
  // ----
  var c = 10;
  while(c > 5){
    c = c - 1; //a--
  }
  print(c);
  
  // Functions 
  print(add(5,6));
  
  print(times(2, 3));
  
  print(add1(m:5, n:6));
  print(add1(m:2));
  
  print(add3(1, 2));
  
  // Const and Final
  
  const p = 5;
  final q = 5; 
  final now = DateTime.now(); 
  
  final list1 = [1, 2];
  const list2 = [3, 4]; 
  
  list1[0] = 10;
  print(list1); 
  
  //list2[0] = 10;
  //print(list2);
  
  // Keyword async
  var res = addAsync(2, 2);
  res.then((value){
    print(value);
  });
  print(res);
}
// Functions
add(int a, int b){
  return a + b;
}

times(int a, int b) => a * b;

add1({int m = 0, int n = 0}) => m + n; 

int add3(int m, int n, [int o = 0]){
  
  return m + n + o;
}

// Function with keyword async
Future<int> addAsync(int a, int b) async{
  const duration = Duration(seconds: 5);
  await Future.delayed(duration, () {
    print('fin des 5 secondes');
  });
  return a + b; 
}
 
// Class
class Person {
  var name; 
  
  /*
   * Person(var name){
   * this.name = name; 
  }* */
  // Dart version of constructor
  Person(this.name);
  
  /*Person.fromPerson(Person p){
   * name = p.name;
  }* */
  // Dart version
  Person.fromPerson(Person p): name = p.name {
    print('End of constructor');
  }
  
  void speak() => print("Morning, my name is $name");
}

// Inheritance
class Employe extends Person{
  var jobName;
  
  Employe(this.jobName, var name): super(name);
  
  @override
  void speak() => print("Hello my name is $name and i work as a $jobName");
}
