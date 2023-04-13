import 'dart:io';

void main() {
  String inputString = getUserInput();
  String reversedString = reverseWords(inputString);
  print(reversedString);
}

String getUserInput() {
  stdout.write('Enter your Name: ');
  String input = stdin.readLineSync()!;
  return input;
}

String reverseWords(String inputString) {
  List<String> wordsList = inputString.split(' ');
  List<String> reversedWordsList = wordsList.reversed.toList();
  return reversedWordsList.join(' ');
}