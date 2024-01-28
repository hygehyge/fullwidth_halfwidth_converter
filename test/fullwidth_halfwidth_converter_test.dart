import 'package:test/test.dart';
import 'package:fullwidth_halfwidth_converter/fullwidth_halfwidth_converter.dart';

void main() {
  const fullwidthInput = '０３ｚ２４ＡＢあＣ単Ｄ［］？カヴパャ　｀';
  const halfwidthInput = '03z24ABあC単D[]?ｶｳﾞﾊﾟｬ `';

  test('convert fullwidth number to halfwidth number', () {
    final result = FullwidthHalfwidthConverter.convertToHalfwidth(
      fullwidthInput,
      convertNumber: true,
    );

    expect(result, equals('03ｚ24ＡＢあＣ単Ｄ［］？カヴパャ　｀'));
  });

  test('convert fullwidth alphabet to halfwidth alphabet', () {
    final result = FullwidthHalfwidthConverter.convertToHalfwidth(
      fullwidthInput,
      convertAlphabet: true,
    );

    expect(result, equals('０３z２４ABあC単D［］？カヴパャ　｀'));
  });

  test('convert fullwidth symbol to halfwidth symbol', () {
    final result = FullwidthHalfwidthConverter.convertToHalfwidth(
      fullwidthInput,
      convertSymbol: true,
    );

    expect(result, equals('０３ｚ２４ＡＢあＣ単Ｄ[]?カヴパャ `'));
  });

  test('convert fullwidth kana to halfwidth kana', () {
    final result = FullwidthHalfwidthConverter.convertToHalfwidth(
      fullwidthInput,
      convertKana: true,
    );

    expect(result, equals('０３ｚ２４ＡＢあＣ単Ｄ［］？ｶｳﾞﾊﾟｬ　｀'));
  });

  test('convert fullwidth to halfwidth', () {
    final result = FullwidthHalfwidthConverter.convertToHalfwidth(fullwidthInput);

    expect(result, equals(halfwidthInput));
  });

  test('convert fullwidth to halfwidth via Extension', () {
    final result = fullwidthInput.toHalfwidth();

    expect(result, equals(halfwidthInput));
  });

  test('convert halfwidth number to fullwidth number', () {
    final result = FullwidthHalfwidthConverter.convertToFullwidth(
      halfwidthInput,
      convertNumber: true,
    );

    expect(result, equals('０３z２４ABあC単D[]?ｶｳﾞﾊﾟｬ `'));
  });

  test('convert halfwidth alphabet to fullwidth alphabet', () {
    final result = FullwidthHalfwidthConverter.convertToFullwidth(
      halfwidthInput,
      convertAlphabet: true,
    );

    expect(result, equals('03ｚ24ＡＢあＣ単Ｄ[]?ｶｳﾞﾊﾟｬ `'));
  });

  test('convert halfwidth symbol to fullwidth symbol', () {
    final result = FullwidthHalfwidthConverter.convertToFullwidth(
      halfwidthInput,
      convertSymbol: true,
    );

    expect(result, equals('03z24ABあC単D［］？ｶｳﾞﾊﾟｬ　｀'));
  });

  test('convert halfwidth kana to fullwidth kana', () {
    final result = FullwidthHalfwidthConverter.convertToFullwidth(
      halfwidthInput,
      convertKana: true,
    );

    expect(result, equals('03z24ABあC単D[]?カヴパャ `'));
  });

  test('convert halfwidth to fullwidth', () {
    final result = FullwidthHalfwidthConverter.convertToFullwidth(halfwidthInput);

    expect(result, equals(fullwidthInput));
  });

  test('convert halfwidth to fullwidth via Extension', () {
    final result = halfwidthInput.toFullwidth();

    expect(result, equals(fullwidthInput));
  });
}
