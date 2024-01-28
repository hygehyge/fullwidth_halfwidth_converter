// ignore_for_file: avoid_print

import 'package:fullwidth_halfwidth_converter/fullwidth_halfwidth_converter.dart';

void main() {
  //fullwidth to halfwidth conversion
  const fullwidthInput = 'アＡ１？';
  print(fullwidthInput.toHalfwidth()); // this shows 'ｱA1?'
  print(fullwidthInput.toHalfwidth(convertNumber: true)); // this shows 'アＡ1？'
  print(fullwidthInput.toHalfwidth(convertAlphabet: true)); // this shows 'アA１？'
  print(fullwidthInput.toHalfwidth(convertSymbol: true)); // this shows 'アＡ１?'
  print(fullwidthInput.toHalfwidth(convertKana: true)); // this shows 'ｱＡ１？'

  //halfwidth to fullwidth conversion
  const halfwidthInput = 'ｱA1?';
  print(halfwidthInput.toFullwidth()); // this shows 'アＡ１？'
  print(halfwidthInput.toFullwidth(convertNumber: true)); // this shows 'ｱA１?'
  print(halfwidthInput.toFullwidth(convertAlphabet: true)); // this shows 'ｱＡ1?'
  print(halfwidthInput.toFullwidth(convertSymbol: true)); // this shows 'ｱA1？'
  print(halfwidthInput.toFullwidth(convertKana: true)); // this shows 'アA1?'
}
