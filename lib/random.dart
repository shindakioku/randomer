library faker;

import 'src/randomer.dart' as functions;
export 'src/randomer.dart';

const randomer = const Randomer();

class Randomer {
  const Randomer();

  random(List list, {int take: 1}) =>
      functions.random(list, take: take);

  int number([int max = 99999]) => functions.number(max);

  dynamic text(
          {int words: 30, List<String> text: functions.enWords, join: ' '}) =>
      functions.text(words: words, text: text, join: join);

  String capitalize(s) => functions.capitalize(s);
}