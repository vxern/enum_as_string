## 1.0.0+3

- Updated package description.
- Updated dependency versions.
- Formatted `README.md`.

## 1.0.0+2

- Updated README.md with crucial information about the original author of
  `enum_to_string`.

## 1.0.0+1

- No changes. Re-requested pub.dev to analyse package.

## 1.0.0 (Forked from `enum_to_string 2.0.1`)

- Added `WordCollector` to the license copyright statement.
- Introduced the `words` lints ruleset and documented the code.
- Updated all other files in accordance with WordCollector conventions.

- Removed:
  - `.parse()` and `.parseCamelCase()`.
  - `camel_case_to_words.dart`.
  - `.toList()` and `.fromList()`, which are functions which could very easily
    be implemented outside the library.
  - Tests which were no longer relevant.
  - `README.md` from the example.

- Renamed the library from `enum_to_string` to `enum_as_string`,
  `enum_to_string.dart` to `conversion.dart`, and the `EnumToString` class to
  simply `Enum`.
