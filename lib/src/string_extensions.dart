import 'package:fullwidth_halfwidth_converter/src/fullwidth_halfwidth_converter.dart';

extension StringExtensions on String {
  ///Convert to halfwidth string.
  String toHalfwidth({
    bool convertNumber = false,
    bool convertAlphabet = false,
    bool convertSymbol = false,
    bool convertKana = false,
  }) =>
      FullwidthHalfwidthConverter.convertToHalfwidth(
        this,
        convertNumber: convertNumber,
        convertAlphabet: convertAlphabet,
        convertSymbol: convertSymbol,
        convertKana: convertKana,
      );

  ///Convert to fullwidth string.
  String toFullwidth({
    bool convertNumber = false,
    bool convertAlphabet = false,
    bool convertSymbol = false,
    bool convertKana = false,
  }) =>
      FullwidthHalfwidthConverter.convertToFullwidth(
        this,
        convertNumber: convertNumber,
        convertAlphabet: convertAlphabet,
        convertSymbol: convertSymbol,
        convertKana: convertKana,
      );
}
