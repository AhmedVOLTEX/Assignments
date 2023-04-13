import 'dart:io';

void main() {
  print('Enter a positive integer:');
  var input = stdin.readLineSync()!;
  var number = int.parse(input);

  if (number <= 1) {
    print('$number is not a prime number.');
  } else {
    var isPrime = true;

    for (var i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print('$number is a prime number.');
    } else {
      print('$number is not a prime number.');
    }
  }
}