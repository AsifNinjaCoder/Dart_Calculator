import 'Calculator.dart';

void main(List<String> args) {
  Calculator c = new Calculator();
  // print(c.division(4 , 2));
  print(c.addition(2, 5));
  print(c.subtrction(3, 5));
  print(c.multiplication(2, 5));
  print(c.addition(2, 5));
  print(c.subtrction(3, 5));
  print(c.multiplication(2, 5));
  print(c.division(4 , 0));
  print(c.addition(2, 5));
  print(c.subtrction(3, 5));
  print(c.multiplication(2, 5));
  print(c.addition(2, 5));
  // print(c.subtrction(3, 5));
  c.history();
  // print(5 ~/ 0);
}
