import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text('George Vasilyev'),
          ),
        ),
      ),
    );
  }
}

Map pool = <String, Student>{
  'Denny': new Student(firstName: 'Denny', age: 20),
};

class Student {
  String firstName, _lastName;
  int age;
  String education;

  Student({this.firstName, this.age});

  Student.byDefault(this.firstName, [this.age = 18]);

  factory Student.fabric({firstName, age}) {
    if (pool.containsKey(firstName)) {
      return pool[firstName];
    } else
      return Student(firstName: firstName, age: age);
  }

  set setLastName(String val) {
    _lastName ??= val;
  }

  String get getLastName => _lastName;
}

class A {
  String title, author, description;
}

class B with A {
  String get getTitle => title;

  B(title) : assert(title != null);
}

void listManipulations() {
  List<String> cars = ['Honda', 'Renault', 'Hyundai'];

  cars.add('Audi');

  cars.addAll(['Porsche', 'Subaru']);

  cars.remove('Honda');

  cars.removeAt(2);

  print(cars[1]);
}

void setManipulations() {
  Set cars = <String>{};

  cars.addAll(['Toyota', 'Subaru', 'Honda']);

  cars.remove('Honda');

  print(cars.elementAt(1));

  assert(cars.contains('Honda'));

  cars.clear();
}

void mapManipulations() {
  Map<String, dynamic> students = {
    'artem': 123,
    'sonya': 3422,
    'ivan': 231,
  };

  students.addAll({
    'sam': 342,
    'henry': 834,
  });

  assert(students.isNotEmpty);

  students.forEach((key, value) {
    print('$key equals $value');
  });

  print(students['sam']);

  students.clear();
}
