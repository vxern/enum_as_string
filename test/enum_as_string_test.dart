import 'package:test/test.dart';

import 'package:enum_as_string/enum_as_string.dart';

enum Cardinals { one, numberTwoWrittenInCamelCase }

void main() {
  test('Enumerators should be converted to strings.', () {
    expect(Enum.asString(Cardinals.one), 'one');
    expect(Enum.asString(Cardinals.numberTwoWrittenInCamelCase),
        'numberTwoWrittenInCamelCase');
  });

  test('Strings should be converted to enumerators.', () {
    expect(Enum.fromString(Cardinals.values, 'one'), Cardinals.one);
    expect(Enum.fromString(Cardinals.values, 'inexistentValue'), null);
    expect(Enum.fromString(Cardinals.values, 'numberTwoWrittenInCamelCase'),
        Cardinals.numberTwoWrittenInCamelCase);
    expect(Enum.fromString(Cardinals.values, 'numberThreeWrittenInCamelCase'),
        null);
  });
}
