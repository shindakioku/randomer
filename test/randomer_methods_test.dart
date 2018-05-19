import 'package:randomer/randomer.dart';
import 'package:test/test.dart';

void main() {
  group('Test the random method ', () {
    test('List with bool and take 1 element', () {
      var list = [true, false];

      expect(true, list.contains(random(list)));
      expect(true, list.contains(random(list)));
      expect(true, list.contains(random(list)));
      expect(true, list.contains(random(list)));
    });

    test('List with int and take 1 element', () {
      var list = [0, 1, 2];

      expect(true, list.contains(random(list)));
      expect(true, list.contains(random(list)));
      expect(true, list.contains(random(list)));
      expect(true, list.contains(random(list)));
    });

    test('Not contains for 1 element', () {
      var list = [0, 1];
      var listString = ['s', 'f'];

      expect(false, list.contains(random(listString)));
    });

    test('With two elements for common types', () {
      var list = [0, 1, 's', '3', true];

      expect(2, random(list, take: 2).length);
    });

    test('If list is empty', () {
      try {
        random([]);
      } catch (e) {
        expect('Exception: List cannot be empty', e.toString());
      }
    });

    test('Test if take more than list length', () {
      var list = [0, 1, 2];

      expect(true, list.contains(random(list, take: 100)));
    });
  });

  group('Test text function ', () {
    test('30 english words without join', () {
      expect(30, text(join: false).length);
    });

    test('30 russian words without join', () {
      expect(30, text(text: ruWords, join: false).length);
    });

    test('with join', () {
      expect(true, text(join: ',') is String);
    });
  });

  test('Capitalize', () {
    expect('Test', capitalize('test'));
    expect('Test w 2 q', capitalize('test w 2 q'));
    expect('Русский текст', capitalize('русский текст'));
  });
}
