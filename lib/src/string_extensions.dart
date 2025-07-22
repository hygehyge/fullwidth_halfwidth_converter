import 'package:fullwidth_halfwidth_converter/src/fullwidth_halfwidth_converter.dart';

extension StringExtensions on String {
  ///Convert to halfwidth string.
  String toHalfwidth({
    bool? convertNumber,
    bool? convertAlphabet,
    bool? convertSymbol,
    bool? convertKana,
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
    bool? convertNumber,
    bool? convertAlphabet,
    bool? convertSymbol,
    bool? convertKana,
  }) =>
      FullwidthHalfwidthConverter.convertToFullwidth(
        this,
        convertNumber: convertNumber,
        convertAlphabet: convertAlphabet,
        convertSymbol: convertSymbol,
        convertKana: convertKana,
      );
}
