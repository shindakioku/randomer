import 'dart:math';

const enWords = const <String>[
  'Lorem',
  'ipsum',
  'dolor',
  'sit',
  'amet,',
  'consectetur',
  'adipiscing',
  'elit,',
  'sed',
  'do',
  'eiusmod',
  'tempor',
  'incididunt',
  'ut',
  'labore',
  'et',
  'dolore',
  'magna',
  'aliqua.',
  'Ut',
  'enim',
  'ad',
  'minim',
  'veniam,',
  'quis',
  'nostrud',
  'exercitation',
  'ullamco',
  'laboris',
  'nisi',
  'ut',
  'aliquip',
  'ex',
  'ea',
  'commodo',
  'consequat.',
  'Duis',
  'aute',
  'irure',
  'dolor',
  'in',
  'reprehenderit',
  'in',
  'voluptate',
  'velit',
  'esse',
  'cillum',
  'dolore',
  'eu',
  'fugiat',
  'nulla',
  'pariatur.',
  'Excepteur',
  'sint',
  'occaecat',
  'cupidatat',
  'non',
  'proident,',
  'sunt',
  'in',
  'culpa',
  'qui',
  'officia',
  'deserunt',
  'mollit',
  'anim',
  'id',
  'est',
  'laborum'
];

const ruWords = const <String>[
  'С',
  'другой',
  'стороны',
  'новая',
  'модель',
  'организационной',
  'деятельности',
  'в',
  'значительной',
  'степени',
  'обуславливает',
  'создание',
  'дальнейших',
  'направлений',
  'развитая',
  'системы',
  'массового',
  'участия.Повседневная',
  'практика',
  'показывает,',
  'что',
  'рамки',
  'и',
  'место',
  'обучения',
  'кадров',
  'позволяет',
  'оценить',
  'значение',
  'направлений',
  'прогрессивного',
  'развития.',
  'Практический',
  'опыт',
  'показывает,',
  'что',
  'курс',
  'на',
  'социально-ориентированный',
  'национальный',
  'проект',
  'обеспечивает',
  'актуальность',
  'позиций,',
  'занимаемых',
  'участниками',
  'в',
  'отношении',
  'поставленных',
  'задач!'
];

// T random<T>(List<T> list, {int take: 1})
random(List list, {int take: 1}) {
  if (0 == list.length) throw new Exception('List cannot be empty');

  if (take > list.length || 0 >= take) take = 1;

  // If need only one element
  if (1 == take) return list[new Random().nextInt(list.length)];

  // If you need return all elements from list...
  if (take == list.length) return list;

  var usedNumbers = <int>[];
  var random = new Random();
  var result = <dynamic>[];
  var i = 0;

  for (i = 0; i < take; i++) {
    var randomNumber = random.nextInt(list.length);

    // If we used index of element in [list]
    if (usedNumbers.contains(randomNumber)) {
      i -= 1;
      continue;
    }

    usedNumbers.add(randomNumber);

    result.add(list[randomNumber]);
  }

  return result;
}

int number([int max = 99999]) => new Random().nextInt(max);

// List<String> or String
dynamic text({int words: 30, List<String> text: enWords, join: ' '}) {
  var result = random(text.isEmpty ? enWords : text,
      take: 0 >= words || words > text.length ? 30 : words);

  if (join is! String && !join) return capitalize(result).split(' ');

  if (join is! String) join = ' ';

  return capitalize(result.join(join));
}

String capitalize(s) =>
    s is String ? s[0].toUpperCase() + s.substring(1) : capitalize(s.join(' '));
