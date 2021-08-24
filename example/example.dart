import 'package:enum_as_string/enum_as_string.dart';

enum Countries { hoofset, crayland, gabbard }

void main() {
  print(Enum.asString(Countries.hoofset)); // 'hoofset'
  print(Enum.asString(Countries.crayland)); // 'crayland'
  print(Enum.asString(Countries.gabbard)); // 'gabbard'
  print(Enum.asString('Not an enum')); // 'Not an enum'

  print(Enum.fromString(Countries.values, 'hoofset')); // 'Countries.hoofset'
  print(Enum.fromString(Countries.values, 'crayland')); // 'Countries.crayland'
  print(Enum.fromString(Countries.values, 'gabbard')); // 'Countries.gabbard'
  print(Enum.fromString(Countries.values, 'inexistentCountry')); // null
}
