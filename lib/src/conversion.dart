/// Extension that allows for enum-to-string and string-to-enum conversions
class Enum {
  /// Given an enumerator value [value], converts it to `String` stripping the
  /// enumerator type, and returns the result
  ///
  /// ```dart
  /// enum Cardinals { one, two, three };
  ///
  /// final sampleEnumValue = Cardinals.three;
  /// final enumStringified = Enum.convertToString(sampleEnumValue);
  /// print(enumStringified) // Prints 'three'
  /// ```
  static String asString(dynamic value) {
    final valueStringified = value.toString();
    return valueStringified.contains('.')
        ? valueStringified.split('.')[1]
        : valueStringified;
  }

  /// Given a `List` of enumerator values `T` and the name of an enumerator
  /// value [item], returns the matching enumerator value, [orDefault].
  ///
  /// ```dart
  /// enum Cardinals { one, two, three };
  ///
  /// final match = Enum.fromString(Cardinals.values, 'one')!;
  /// print(match) // Prints 'Cardinals.one'
  /// ```
  static T? fromString<T>(List<T> values, String? item,
      {bool caseInvariant = true, T? orDefault}) {
    if (item == null) {
      return orDefault;
    }

    final bool Function(T value, String item) areEqual;
    if (caseInvariant) {
      areEqual = (value, item) =>
          Enum.asString(value).toLowerCase() == item.toLowerCase();
    } else {
      areEqual = (value, item) => Enum.asString(value) == item.toLowerCase();
    }

    for (final value in values) {
      if (areEqual(value, item)) {
        return value;
      }
    }

    return orDefault;
  }
}
