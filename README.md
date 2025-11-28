# fullwidth_halfwidth_converter

Provide conversion between fullwidth(全角) and halfwidth(半角) in Japanese.

## Features

- You can select indivisual conversion type. Number, Alphabet, Symbol and Kana are available.
- Provide extensions on `String`.

## Usage

In your code:
```dart
import 'package:fullwidth_halfwidth_converter/fullwidth_halfwidth_converter.dart';

final converted = 'アＡ１？'.toHalfwidth();
print(converted);// this shows 'ｱA1?'.

// you can specify conversion type.
final numberAndKanaConverted = 'ｱA1?'.toFullwidth(convertNumber:true,convertKana:true);
print(numberAndKanaConverted);// this shows 'アA１?'.
```

