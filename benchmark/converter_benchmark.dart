import 'package:fullwidth_halfwidth_converter/fullwidth_halfwidth_converter.dart';
import 'package:benchmark_runner/benchmark_runner.dart';

void main(List<String> args) async {
  final halfwidthString = '03z24ABあC単D[]?ｶｳﾞﾊﾟｬ `';
  final fullwidthString = '０３ｚ２４ＡＢあＣ単Ｄ［］？カヴパャ　｀';

  group('2Full', () {
    benchmark('static 2Full', () {
      FullwidthHalfwidthConverter.convertToFullwidth(halfwidthString);
    });

    benchmark('extension 2Full', () {
      halfwidthString.toFullwidth();
    });
  });

  group('2Half', () {
    benchmark('static 2Half', () {
      FullwidthHalfwidthConverter.convertToHalfwidth(fullwidthString);
    });

    benchmark('extension 2Half', () {
      fullwidthString.toHalfwidth();
    });
  });
}
