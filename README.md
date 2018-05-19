# randomer

Randomer helps to you for generate what do you need.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:
```dart
import 'package:randomer/random.dart';

main() {
  print(random([true, false]));
  print(random([0, 1, 2], take: 2));
  
  print(capitalize('test test')); // Test test
  
  print(text()); // Random text
  print(text(words: 20));
  print(text(join: false)); // Will return the List
  print(text(text: ['a', 'b', 'c']));
}
```
    
Also, you can use the object for calling functions:
```dart
import 'package:randomer/random.dart';

main() {
  print(randomer.random([true, false]));
  print(randomer.random([0, 1, 2], take: 2));
  
  print(randomer.capitalize('test test')); // Test test
  
  print(randomer.text()); // Random text
  print(randomer.text(words: 20));
  print(randomer.text(join: false)); // Will return the List
  print(randomer.text(text: ['a', 'b', 'c']));
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/shindakioku/randomer/issues
