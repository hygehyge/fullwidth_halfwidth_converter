# fullwidth_halfwidth_converter

Provide conversion between fullwidth and halfwidth in Japanese.

## Features

- You can select indivisual conversion type. Number, Alphabet, Symbol and Kana are available.
- Provide extensions on `String`.

## Usage

In your code:
```dart
import 'package:fullwidth_halfwidth_converter/fullwidth_halfwidth_converter.dart';

final converted = 'アＡ１？'.convertToHalfwidth();
print(converted);// this shows 'ｱA1?'.

// you can specify conversion type.
final numberAndKanaConverted = 'アＡ１？'.convertToHalfwidth(convertNumber:true,convertKana:true);
print(numberAndKanaConverted);// this shows 'ｱＡ1？'.
```

