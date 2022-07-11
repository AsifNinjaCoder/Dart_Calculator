// import 'ZeroDenometerException.dart';
import 'dart:io';

class Calculator {
  List<String> lst = [];
  int size = 0;
  int addition(int a, int b) {
    int ans = a + b;
    if (size == 0) {
      size++;
      lst.add('$a + $b= $ans');
    } else if (size == 10) {
      lst.remove(lst[0]);
      lst.add('$a + $b= $ans');
    } else {
      size++;
      lst.add('$a + $b= $ans');
    }
    return ans;
  }

  int subtrction(int a, int b) {
    int ans = a - b;
    if (size == 0) {
      size++;
      lst.add('$a - $b= $ans');
    } else if (size == 10) {
      lst.remove(lst[0]);
      lst.add('$a - $b= $ans');
    } else {
      size++;
      lst.add('$a - $b= $ans');
    }
    return ans;
  }

  int multiplication(int a, int b) {
    int ans = a * b;
    if (size == 0) {
      size++;
      lst.add('$a * $b= $ans');
    } else if (size == 10) {
      lst.remove(lst[0]);
      lst.add('$a * $b= $ans');
    } else {
      size++;
      lst.add('$a * $b= $ans');
    }
    return ans;
  }

  int division(int a, int b) {
    int ans;
    try {
      ans = a ~/ b;
      if (size == 0) {
        size++;
        lst.add('$a / $b= $ans');
      } else if (size == 10) {
        lst.remove(lst[0]);
        lst.add('$a / $b= $ans');
      } else {
        size++;
        lst.add('$a / $b= $ans');
      }
      return ans;
    } catch (ZeroDenometerException) {
      print("Dominator Should Not be Zero");
      print("Enter the Dominator");
      int k = int.parse(stdin.readLineSync()!);
      b = k;
      ans = a ~/ b;
      if (size == 0) {
        size++;
        lst.add('$a / $b= $ans');
      } else if (size == 10) {
        lst.remove(lst[0]);
        lst.add('$a / $b= $ans');
      } else {
        size++;
        lst.add('$a / $b= $ans');
      }
      return ans;
    }
  }

  void history() {
    for (String i in lst) {
      print(i);
    }
  }
}
