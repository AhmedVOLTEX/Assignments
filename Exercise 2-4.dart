import 'dart:io';

void main() {
  int number = getNumber();
  List<int> divisors = getDivisors(number);
  print('The divisors of $number are: $divisors');
}

int getNumber() {
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  return number;
}

List<int> getDivisors(int number) {
  List<int> divisors = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      divisors.add(i);
    }
  }
  return divisors;
}