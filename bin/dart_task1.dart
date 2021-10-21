import 'package:dart_task1/dart_task1.dart' as dart_task1;
import 'dart:io';

void main() {
  print(''' Hi! Your calculator is ready.
  Please write 1 or 2 to choose an option.
  Option 1: calculate one by one
  Option 2: calculate multiple operations ''');

  while (true) {
    String? option = stdin.readLineSync();
    int op = int.parse(option!);
    if (op == 1) {
      calcOne();
      break;
    } else if (op == 2) {
      calcList();
      break;
    } else {
      String? option = stdin.readLineSync(); //to avoid wrong enteries on null
    }
  }
}

calcOne() {
  print('Enter first number');
  String? first = stdin.readLineSync();
  int f = int.parse(first!);
  print('Enter second number');
  String? second = stdin.readLineSync();
  int s = int.parse(second!);
  print('Choose an operation + - x /');
  String? calc = stdin.readLineSync();
  switch (calc) {
    case '+':
      print('$f + $s = ${f + s}');
      break;
    case '-':
      print('$f - $s = ${f - s}');
      break;
    case 'x':
      print('$f x $s = ${f * s}');
      break;
    case '/':
      print('$f / $s = ${f / s}');
      break;
  }
  print('______________________');
  calcOne(); //To make new operation
}

calcList() {
  List<int> f = [];
  List<int> s = [];
  List<String?> calc = [];
  for (var i = 0; i > -1; i++) {
    print('Enter first number, if you finished your list write "e" ');
    String? first = stdin.readLineSync();
    if (first == 'e') {
      break;
    } // this conditions checks if user finished his lists or not
    f.add(int.parse(first!));
    print(f);
    print('Enter second number, if you finished your list write "e" ');
    String? second = stdin.readLineSync();
    if (second == 'e') {
      break;
    } // this conditions checks if user finished his lists or not
    s.add(int.parse(second!));
    print(s);
    print('Choose an operation + - x /, if you finished your list write "e" ');
    String? imp = stdin.readLineSync();
    if (imp == 'e') {
      break;
    } // this conditions checks if user finished his lists or not
    calc.add(imp);
    print(calc);
  }
  for (var i = 0; i < calc.length; i++) {
    switch (calc[i]) {
      case '+':
        print('${f[i]} + ${s[i]} = ${f[i] + s[i]}');
        break;
      case '-':
        print('${f[i]} - ${s[i]} = ${f[i] - s[i]}');
        break;
      case 'x':
        print('${f[i]} x ${s[i]} = ${f[i] * s[i]}');
        break;
      case '/':
        print('${f[i]} / ${s[i]} = ${f[i] / s[i]}');
        break;
    }
  }
  /* the for loop will only calculate all numbers that have operations,
  extra numbers without operations wont be calculated*/
}
