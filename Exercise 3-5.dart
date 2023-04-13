import 'dart:io';

void main() {
  print('Enter a number:');
  var input = stdin.readLineSync();
  var number = double.parse(input!);

  if (number > 0) {
    print('The number is positive.');
  } else if (number < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }
}