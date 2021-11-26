## A tiny, simple utility package for enum-to-string and string-to-enum conversions

This package was originally a fork of
[enum_to_string](https://pub.dev/packages/enum_to_string) by
[Ryan Knell (rknell)](https://github.com/rknell). Most code has been rewritten,
and large parts of it removed as they were deemed unnecessary, such as
string-to-enum-list and `camelCase` to `Start Case` value conversions.

### Usage

Conversion of an enumerator value to a string (enum-to-string):

```dart
Enum.asString(Direction.up); // Returns 'up'
```

Conversion of a string to an enumerator value (string-to-enum):

```dart
Enum.fromString(Countries.values, 'elSalvador'); // Returns 'Countries.elSalvador'
```
