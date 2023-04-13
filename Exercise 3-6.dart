import 'dart:io';

void main() {
  print('Enter three numbers:');
  var input1 = stdin.readLineSync()!;
  var input2 = stdin.readLineSync()!;
  var input3 = stdin.readLineSync()!;

  var num1 = double.parse(input1);
  var num2 = double.parse(input2);
  var num3 = double.parse(input3);

  if (num1 < num2 && num2 < num3) {
    print('Increasing');
  } else if (num1 > num2 && num2 > num3) {
    print('Decreasing');
  } else {
    print('Neither increasing or decreasing order');
  }
}