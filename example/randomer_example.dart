import 'package:randomer/randomer.dart';

main() {
  print(random([true, false]));
  print(random([0, 1, 2]));
  print(random([
    {'login': 'shinda'},
    {'login': 'kioku'},
    {'login': 'first'},
    {'login': 'last'}
  ]));

  print(random([0, 1, 2], take: 2));

  print(text());
  print(text(words: 20));
  print(text(words: 30));
  print(text(words: 20, text: ruWords));
  print(text(words: 2, text: ['first', 'second', 'third']));
  print(text(join: false)); // Will return the List

  print(capitalize('test 1 2')); // Test 1 2
}
