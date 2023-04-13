List<T> getElementsInOddPositions <T>(List<T> list) {
  List<T> result = [];
  for (int i = 0; i < list.length; i += 2) {
    result.add(list[i]);
  }
  return result;
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6, 7];
  List<int> result = getElementsInOddPositions(myList);
  print(result); // [1, 3, 5, 7]
}