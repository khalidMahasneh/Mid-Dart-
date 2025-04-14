import 'dart:io';

void main() {
  //Dart is a client optimized, object-oriented programming language
  //Flutter is a framework that uses dart programming language.

  var salary = 5000;

  double price = 1130.2232323233233; // valid.
  print(price.toStringAsFixed(2)); //Round Double Value To 2 Decimal Places

  // Multi Line Using Single Quotes
  String multiLineText = '''
  This is Multi Line Text
  with 3 single quote
  I am also writing here.
  ''';

  // Multi Line Using Double Quotes
  String otherMultiLineText = """
  This is Multi Line Text
  with 3 double quote
  I am also writing here.
  """;

  String withoutRawString = "The value of price is \t $price"; // regular String Without Raw: The value of price is 	 10
  String withRawString = r"The value of price is \t $price"; // raw String With Raw: The value of price is \t $price

  // Check Runtime Type (.runtimeType)
  var a = 10;
  print(a.runtimeType);
  print(a is int); // true

  //type test operators
  String value1 = "Dart Tutorial";
  int age = 10;

  print(value1 is String); // true
  print(age is !int); // false

  String strvalue = "1";
  int intvalue = int.parse(strvalue); // Convert String To Int (int.parse) , String To Double (double.parse)
  // Int To String (toString()) , Double To Int (toInt())

  var fName = "Khalid"; // var automatically finds a data type
  print(fName);
  var Lname = "Mahasnah";
  print("My Full Name Is $fName $Lname"); // string interpolation
  print("employee Name:" + fName + ", has salary" + salary.toString()); // printing using concatenation + symbol

  final city = "Amman"; // or final String city = "Amman";
  // city="aqaba"; final cannot be reassigned

  Statically Typed
  var myVariable = 50;  You can also use int instead of var
  myVariable = "Hello";  this will give error
  print(myVariable);

  Dynamically Typed Example
  dynamic myVariable = 50;
  myVariable = "Hello";
  print(myVariable);

  //String User Input
  print("Enter name:");
  String? name = stdin.readLineSync();

  //Integer double User Input
  print("Enter number:");
  int? number = int.parse(stdin.readLineSync()!);
  double number1 = double.parse(stdin.readLineSync()!);

  print(str.codeUnits); //Example of code units  //[72, 105]
  print(str.isEmpty); //Example of isEmpty //false
  print(str.isNotEmpty); //Example of isNotEmpty //true
  print("The length of the string is: ${str.length}"); //Example of Length

  print("Address 1 in uppercase: ${address1.toUpperCase()}");
  print("Address 1 in lowercase: ${address1.toLowerCase()}");

  // Trim is helpful when removing leading and trailing spaces
  print("Result of address1 trim is ${address1.trim()}");
  print("Result of address1 trimLeft is ${address1.trimLeft()}");
  print("Result of address2 trimRight is ${address2.trimRight()}");

  // the result 0 when two texts are equal
  // 1 when the first String is greater than the second
  // and -1 when the first String is smaller than the second.
  print("Comparing item 1 with item 2: ${item1.compareTo(item2)}");

  //replaceAll(“old”, “new”)
  String text = "I am a good boy I like milk. Doctor says milk is good for health.";
  String newText = text.replaceAll("milk", "water");

  //Split String In Dart
  String allNames = "Ram, Hari, Shyam, Gopal";
  List<String> listNames = allNames.split(",");

  //SubString In Dart
  String text = "I love computer";
  print("Print only computer: ${text.substring(7)}"); // from index 6 to the last index
  print("Print only love: ${text.substring(2, 6)}"); // from index 2 to the 6th index

  //Reverse String In Dart
  String input = "Hello";
  print("$input Reverse is ${input.split('').reversed.join()}");

  //assert method to check for the error.
  //If the condition is true, nothing happens
  //assert(condition);
  assert(age != 22);
  // or assert(condition, "Your custom message");
  assert(age != 22, "Age must be 22");

  //Ternary Operator
  // condition ? exprIfTrue : exprIfFalse
  (num1 > num2) ? num1 : num2;

  List<String> footballplayers = ['Ronaldo', 'Messi', 'Neymar', 'Hazard'];
  footballplayers.forEach((names) => print(names));

  int a = 18;
  int b = 0;
  int res;
  try {
    res = a / b;
    print("Result is $res");
  }
  // It returns the built-in exception related to the occurring exception
  catch (ex) {
    print(ex);
  }

  // Optional Parameter
  void printInfo(String name, String gender, [String? title]) {}

  // Arrow Function In Dart :
  //returnType functionName(parameters...) => expression;
  double calculateInterest(double principal, double rate, double time) =>
      principal * rate * time / 100;

  // There are two types of Lists: Fixed Length
  var list = List<int>.filled(5, 0); //This will create List of 5 integers with the value 0.

  //First And Last Elements
  List<String> drinks = ["water", "juice", "milk", "coke"];
  print("First element of the List is: ${drinks.first}");
  print("Last element of the List is: ${drinks.last}");

  // Reverse List
  List<String> drinks = ["water", "juice", "milk", "coke"];
  print("List in reverse: ${drinks.reversed}");

  List<String> names = ["Raj", "John", "Max"]; //  List and Growable List [Mostly Used]
  print(names); // print("Value of names is $names");
  names.add("Khalid");
  print(names[3]); // print("Value of names[3] is ${names[3]}");
  int length = names.length;
  // add multiple element
  names.addAll(["Mohammad", "Ahamad"]);
  List<String> newNames = ["Sarah", "Jood", "Alia"];
  names.addAll(newNames);

  //Insert Item To List
  List myList = [3, 4, 2, 5];
  print(myList);
  myList.insert(2, 15);
  print(myList);

    //Replace Range Of List
  var list = [10, 15, 20, 25, 30];
  print("List before updation: ${list}"); //List before updation: [10, 15, 20, 25, 30]
  list.replaceRange(0, 4, [5, 6, 7, 8]);
  print("List after updation using replaceAll() function : ${list}"); //List after updation using replaceAll() function : [5, 6, 7, 8, 30]

  //Removing
  list.remove(30); //Removes one element at a time from the given List.
  list.removeAt(3); //Removes an element from the specified index position and returns it.
  list.removeLast(); //Remove the last element from the given List.
  list.removeRange(0, 3); //Removes the item within the specified range.

  //Multiply All Value By 2 Of All List
  List<int> list = [10, 20, 30, 40, 50];
  var douledList = list.map((n) => n * 2);

  // define two lists
  List<int> firstList = [5, 20, 15];
  List<int> secondList = [8, 50, 66];
  // We can use spread operator in order to merge two lists.
  List<int> mergedList = [...firstList, ...secondList]; //Merge two lists

  //Conditions In List
  bool sad = false;
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
  print(cart); // [milk, ghee]

  //Where In List Dart
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];
  List<int> even = numbers.where((number) => number.isEven).toList();
  print(even); //[2, 4, 6, 8, 10, 12, 14]

  var myList1 = [0, 2, 4, 6, 8, 2, 7];
  myList1.where((item) => item > 5).toList(); // [6, 8, 7] // filter all items in List that match the condition | where()
  myList1.firstWhere((item) => item > 5); // 6 // get the first item in List that matches the condition | firstWhere()
  myList1.lastWhere((item) => item > 5); // 7 //get the last item in List that matches the condition | lastWhere()

  //new methods
  var mylist = [1, 2, 3, 4, 5];
  print(mylist.sublist(1, 3)); //[2,3] // note that end is exclusive
  print(mylist.sublist(1)); //[2,3,4,5] // if end not provided it returns all elements from start to the length
  print(mylist.shuffle());
  mylist.sort();

  var intList = [5, 8, 17, 11];
  if (intList.every((n) => n > 4)) //We can verify if all items in a List satisfy a condition using every() method.
    print('All numbers > 4');

  if (intList.any((n) => n > 10)) // We can verify if at least one item in a List satisfies a condition using any() method.
    print('At least one number > 10');

  // Define integer list
  List<int> heights = [10, 20, 50, 30];
  //map() method to multiple each element in the list with number 2 using Curly brackets
  heights.map((e) {
    return e * 2;
  });
  // using Fat arrow
  heights.map((e) => e * 5);

  // However, this command does not modify the list
  // Therefore, we need to assign it to height or create a new variable
  var newHeights = heights.map((e) {
    return e * 2;
  });
  print(newHeights); //Note that newHeights is not a list

  //Therefore, we need to convert it to list
  var newHeightsList = heights.map((e) {
    return e * 2;
  }).toList(growable: true);
  print(newHeightsList); // this is list

  //use the map() method to return an iterable of numbers (double) from a list of strings
  var inputs = ['1.24', '2.35', '4.56', 'abc'];
  var numbers = inputs.map((n) => double.tryParse(n));
  print(numbers); //(1.24, 2.35, 4.56, null)

  //directly pass double.tryParse
  var inputs = ['1.24', '2.35', '4.56', 'abc'];
  var numbers = inputs.map(double.tryParse);
  print(numbers);

  //To remove null from the result
  var inputs = ['1.24', '2.35', '4.56', 'abc'];
  var numbers = inputs.map(double.tryParse).where((n) => n != null);
  print(numbers);

  // Sets
  Set<String> weekday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}; // Note: Set doesn’t print duplicate items.
  print(weekday);

  //Set Properties
  Set<String> fruits = {"Apple", "Orange", "Mango", "Banana"};
  print(fruits.first);
  print(fruits.last);
  print(fruits.isEmpty);
  print(fruits.isNotEmpty);
  print(fruits.length);
  print(fruits.contains("Mango")); //true
  print(fruits.contains("Lemon")); //false
  fruits.add("Lemon");
  fruits.remove("Apple");
  fruits.clear(); //remove all items from the Set.
  print(fruits.elementAt(2)); // 0,1,2,3,4,....

  //Adding Multiple Elements
  Set<int> numbers = {10, 20, 30};
  numbers.addAll([40, 50]);
  print("After adding 40 and 50: $numbers");

  // difference, intersection, union
  Set<String> fruits1 = {"Apple", "Orange", "Mango"};
  Set<String> fruits2 = {"Apple", "Grapes", "Banana"};
  final differenceSet = fruits1.difference(fruits2);
  print(differenceSet); //{Orange, Mango}
  final intersectionSet = fruits1.intersection(fruits2);
  print(intersectionSet); // {Apple}
  print(fruits1.union(fruits2));

  //Sets can be iterated using a for loop or the `forEach` method.
  for (var number in numbers) {
    print(number);
  }

  // or using forEach
  numbers.forEach((number) {
    print(number);
  });

 //Converting a list to a set
  final List list1 = [1, 2, 3, 4, 1, 3, 2];
  final set1 = list1.toSet();

 //Converting a set to a list
  final Set<int> set1 = {1, 2, 3};
  final list1 = set1.toList();

  // In Dart, a map is an object where you can store data in key-value pairs.
  // Each key occurs only once, but you can use same value multiple times.
  Map<String, String> countryCapital = {
    'USA': 'Washington, D.C.',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  print(countryCapital["USA"]); // Washington, D.C.
  print(countryCapital); //{USA: Washington, D.C., India: New Delhi, China: Beijing}  
  countryCapital['Japan'] = 'Tokio';
  print(countryCapital); //{USA: Washington, D.C., India: New Delhi, China: Beijing, Japan: Tokio}
  countryCapital['USA'] = 'Amman'; // Updating Item
  countryCapital.remove("USA"); //remove item

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  print("All keys of Map: ${expenses.keys}"); //All keys of Map: (sun, mon, tue)
  print("All values of Map: ${expenses.values}"); //All values of Map: (3000, 3000, 3234)
  print("Is Map empty: ${expenses.isEmpty}");
  print("Is Map not empty: ${expenses.isNotEmpty}");
  print("Length of map is: ${expenses.length}"); //Length of map is: 3

  // Without List
  print("All keys of Map: ${expenses.keys}"); // All keys of Map: (sun, mon, tue)
  print("All values of Map: ${expenses.values}");// All values of Map: (3000, 3000, 3234)
 
  // With List
  print("All keys of Map with List: ${expenses.keys.toList()}"); // All keys of Map with List: [sun, mon, tue]
  print("All values of Map with List: ${expenses.values.toList()}"); //All values of Map with List: [3000, 3000, 3234]

  // For Keys
  print("Does Map contain key sun: ${expenses.containsKey("sun")}"); // Does Map contain key sun: true
  print("Does Map contain key abc: ${expenses.containsKey("abc")}"); // Does Map contain key abc: false

  // For Values
  print("Does Map contain value 3000.0: ${expenses.containsValue(3000.0)}"); //Does Map contain value 3000.0: true
  print("Does Map contain value 100.0: ${expenses.containsValue(100.0)}"); //Does Map contain value 100.0: false

  //Looping Over Map
  Map<String, dynamic> book = {
    'title': 'Misson Mangal',
    'author': 'Kuber Singh',
    'page': 233
  };
   // Loop Through Map
  for (MapEntry book in book.entries) {
    print('Key is ${book.key}, value ${book.value}');
  }
  // Loop Through For Each
  book.forEach((key, value) => print('Key is $key and value is $value'));

  //Remove Where In Map
  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };
  mathMarks.removeWhere((key, value) => value < 32);
  print(mathMarks);

  // where
  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  List<String> startWithS = days.where((element) => element.startsWith("S")).toList();
  print(startWithS); //[Sunday, Saturday]
  
}

class Animal {
  //The ? is used for null safety
  String? name; 
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }}

class Car {
  String? name;
  String? color;
  int? numberOfSeats;

  void start() {
    print("$name Car Started.");
  }
}

void main(){
    // Here car is object of class Car. 
    Car car = Car();
    car.name = "BMW";
    car.color = "Red";
    car.numberOfSeats = 4;
    car.start(); //BMW Car Started.


    // Here car2 is another object of class Car.
    Car car2 = Car();
    car2.name = "Audi";
    car2.color = "Black";
    car2.numberOfSeats = 4;
    car2.start(); //Audi Car Started.

}



class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student(String name, int age, int rollNumber) {
    print(
        "Constructor called"); // this is for checking the constructor is called or not.
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}



class Person{
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor in short form
  Person(this.name, this.age, this.subject, this.salary);
}



class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor With Optional Parameters
  Employee(this.name, this.age, [this.subject = "N/A", this.salary = 0]);
}

class Chair {
  String? name;
  String? color;

  // Constructor With Named Parameters
  Chair({this.name, this.color});
}

class Table {
  String? name;
  String? color;

  // Constructor With Default Values
  Table({this.name = "Table1", this.color = "White"});

  // Method
  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

// Encapsulation
// Note: Dart doesn’t support keywords like public, private, and protected.
// Dart uses _ (underscore) to make a property or method private.
// The encapsulation happens at library level, not at class level.

class Employee {
  // Private properties
  int? _id;
  String? _name;

  // Getter method to access private property _id
  int getId() {
    return _id!;
  }

  // Getter method to access private property _name
  String getName() {
    return _name!;
  }

  // Setter method to update private property _id
  void setId(int id) {
    this._id = id;
  }

  // Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }
}

void main() {
  // Create an object of Employee class
  Employee emp = new Employee();

  // Setting values to the object using setter
  emp.setId(1);
  emp.setName("John");

  // Retrieve the values of the object using getter
  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");
}

// How To Create Getter and Setter Methods?

class Vehicle {
  String _model;
  int _year;

  // Getter method
  String get model => _model;

  // Setter method
  set model(String model) => _model = model;

  // Getter method
  int get year => _year;

  // Setter method
  set year(int year) => _year = year;
}

void main() {
  var vehicle = Vehicle();
  vehicle.model = "Toyota";
  vehicle.year = 2019;
  print(vehicle.model);
  print(vehicle.year);
}

// Inheritance

class Person {
  // Properties
  String? name;
  int? age;

  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

// Here in student class, we are extending the
// properties and methods of the Person class
class Student extends Person {
  // Fields
  String? schoolName;
  String? schoolAddress;

  // Method
  void displaySchoolInfo() {
    print("School Name: $schoolName");
    print("School Address: $schoolAddress");
  }
}

void main() {
  // Creating an object of the Student class
  var student = Student();
  student.name = "John";
  student.age = 20;
  student.schoolName = "ABC School";
  student.schoolAddress = "New York";
  student.display();
  student.displaySchoolInfo();
}
