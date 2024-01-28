///
class FullwidthHalfwidthConverter {
  //半角文字と全角文字のユニコード上の差
  static const _unicodeDifference = 65248;

  //半角-全角カナMap
  static const _fullwidthToHalfwidthKanaMap = {
    'ア': 'ｱ',
    'イ': 'ｲ',
    'ウ': 'ｳ',
    'エ': 'ｴ',
    'オ': 'ｵ',
    'カ': 'ｶ',
    'キ': 'ｷ',
    'ク': 'ｸ',
    'ケ': 'ｹ',
    'コ': 'ｺ',
    'サ': 'ｻ',
    'シ': 'ｼ',
    'ス': 'ｽ',
    'セ': 'ｾ',
    'ソ': 'ｿ',
    'タ': 'ﾀ',
    'チ': 'ﾁ',
    'ツ': 'ﾂ',
    'テ': 'ﾃ',
    'ト': 'ﾄ',
    'ナ': 'ﾅ',
    'ニ': 'ﾆ',
    'ヌ': 'ﾇ',
    'ネ': 'ﾈ',
    'ノ': 'ﾉ',
    'ハ': 'ﾊ',
    'ヒ': 'ﾋ',
    'フ': 'ﾌ',
    'ヘ': 'ﾍ',
    'ホ': 'ﾎ',
    'マ': 'ﾏ',
    'ミ': 'ﾐ',
    'ム': 'ﾑ',
    'メ': 'ﾒ',
    'モ': 'ﾓ',
    'ヤ': 'ﾔ',
    'ユ': 'ﾕ',
    'ヨ': 'ﾖ',
    'ラ': 'ﾗ',
    'リ': 'ﾘ',
    'ル': 'ﾙ',
    'レ': 'ﾚ',
    'ロ': 'ﾛ',
    'ワ': 'ﾜ',
    'ヲ': 'ｦ',
    'ン': 'ﾝ',
    'ヴ': 'ｳﾞ',
    'ガ': 'ｶﾞ',
    'ギ': 'ｷﾞ',
    'グ': 'ｸﾞ',
    'ゲ': 'ｹﾞ',
    'ゴ': 'ｺﾞ',
    'ザ': 'ｻﾞ',
    'ジ': 'ｼﾞ',
    'ズ': 'ｽﾞ',
    'ゼ': 'ｾﾞ',
    'ゾ': 'ｿﾞ',
    'ダ': 'ﾀﾞ',
    'ヂ': 'ﾁﾞ',
    'ヅ': 'ﾂﾞ',
    'デ': 'ﾃﾞ',
    'ド': 'ﾄﾞ',
    'バ': 'ﾊﾞ',
    'ビ': 'ﾋﾞ',
    'ブ': 'ﾌﾞ',
    'ベ': 'ﾍﾞ',
    'ボ': 'ﾎﾞ',
    'パ': 'ﾊﾟ',
    'ピ': 'ﾋﾟ',
    'プ': 'ﾌﾟ',
    'ペ': 'ﾍﾟ',
    'ポ': 'ﾎﾟ',
    'ァ': 'ｧ',
    'ィ': 'ｨ',
    'ゥ': 'ｩ',
    'ェ': 'ｪ',
    'ォ': 'ｫ',
    'ッ': 'ｯ',
    'ャ': 'ｬ',
    'ュ': 'ｭ',
    'ョ': 'ｮ',
    'ー': 'ｰ',
  };

  //全角-半角カナMap
  static const _halfwidthToFullwidthKanaMap = {
    'ｱ': 'ア',
    'ｲ': 'イ',
    'ｳ': 'ウ',
    'ｴ': 'エ',
    'ｵ': 'オ',
    'ｶ': 'カ',
    'ｷ': 'キ',
    'ｸ': 'ク',
    'ｹ': 'ケ',
    'ｺ': 'コ',
    'ｻ': 'サ',
    'ｼ': 'シ',
    'ｽ': 'ス',
    'ｾ': 'セ',
    'ｿ': 'ソ',
    'ﾀ': 'タ',
    'ﾁ': 'チ',
    'ﾂ': 'ツ',
    'ﾃ': 'テ',
    'ﾄ': 'ト',
    'ﾅ': 'ナ',
    'ﾆ': 'ニ',
    'ﾇ': 'ヌ',
    'ﾈ': 'ネ',
    'ﾉ': 'ノ',
    'ﾊ': 'ハ',
    'ﾋ': 'ヒ',
    'ﾌ': 'フ',
    'ﾍ': 'ヘ',
    'ﾎ': 'ホ',
    'ﾏ': 'マ',
    'ﾐ': 'ミ',
    'ﾑ': 'ム',
    'ﾒ': 'メ',
    'ﾓ': 'モ',
    'ﾔ': 'ヤ',
    'ﾕ': 'ユ',
    'ﾖ': 'ヨ',
    'ﾗ': 'ラ',
    'ﾘ': 'リ',
    'ﾙ': 'ル',
    'ﾚ': 'レ',
    'ﾛ': 'ロ',
    'ﾜ': 'ワ',
    'ｦ': 'ヲ',
    'ﾝ': 'ン',
    'ｳﾞ': 'ヴ',
    'ｶﾞ': 'ガ',
    'ｷﾞ': 'ギ',
    'ｸﾞ': 'グ',
    'ｹﾞ': 'ゲ',
    'ｺﾞ': 'ゴ',
    'ｻﾞ': 'ザ',
    'ｼﾞ': 'ジ',
    'ｽﾞ': 'ズ',
    'ｾﾞ': 'ゼ',
    'ｿﾞ': 'ゾ',
    'ﾀﾞ': 'ダ',
    'ﾁﾞ': 'ヂ',
    'ﾂﾞ': 'ヅ',
    'ﾃﾞ': 'デ',
    'ﾄﾞ': 'ド',
    'ﾊﾞ': 'バ',
    'ﾋﾞ': 'ビ',
    'ﾌﾞ': 'ブ',
    'ﾍﾞ': 'ベ',
    'ﾎﾞ': 'ボ',
    'ﾊﾟ': 'パ',
    'ﾋﾟ': 'ピ',
    'ﾌﾟ': 'プ',
    'ﾍﾟ': 'ペ',
    'ﾎﾟ': 'ポ',
    'ｧ': 'ァ',
    'ｨ': 'ィ',
    'ｩ': 'ゥ',
    'ｪ': 'ェ',
    'ｫ': 'ォ',
    'ｯ': 'ッ',
    'ｬ': 'ャ',
    'ｭ': 'ュ',
    'ｮ': 'ョ',
    'ｰ': 'ー',
  };

  ///Convert input string to halfwidth string.
  static String convertToHalfwidth(
    String input, {
    bool convertNumber = false,
    bool convertAlphabet = false,
    bool convertSymbol = false,
    bool convertKana = false,
  }) {
    final convertAll =
        [convertNumber, convertAlphabet, convertSymbol, convertKana].every((element) => element == false);
    var result = input;

    //数字変換
    if (convertAll || convertNumber) {
      final regex = RegExp(r'^[０-９]+$');
      final string = result.runes.map<String>((rune) {
        final char = String.fromCharCode(rune);
        return regex.hasMatch(char) ? String.fromCharCode(rune - _unicodeDifference) : char;
      });
      result = string.join();
    }

    //アルファベット変換
    if (convertAll || convertAlphabet) {
      final regex = RegExp(r'^[Ａ-Ｚａ-ｚ]+$');
      final string = result.runes.map<String>((rune) {
        final char = String.fromCharCode(rune);
        return regex.hasMatch(char) ? String.fromCharCode(rune - _unicodeDifference) : char;
      });
      result = string.join();
    }

    //記号変換
    if (convertAll || convertSymbol) {
      final regex = RegExp(r'^[！-／：-＠［-｀｛-～]+$');
      final string = result.runes.map<String>((rune) {
        final char = String.fromCharCode(rune);
        return regex.hasMatch(char) ? String.fromCharCode(rune - _unicodeDifference) : char;
      });
      result = string.join().replaceAll('　', ' ');
    }

    //カナ変換
    if (convertAll || convertKana) {
      final regex = RegExp(r'[ァ-ヴ]');
      result = result.replaceAllMapped(regex, (Match match) {
        final halfwidthKana = _fullwidthToHalfwidthKanaMap[match.group(0)!];
        return halfwidthKana ?? match.group(0)!;
      });
    }

    return result;
  }

  ///Convert input string to fullwidth string.
  static String convertToFullwidth(
    String input, {
    bool convertNumber = false,
    bool convertAlphabet = false,
    bool convertSymbol = false,
    bool convertKana = false,
  }) {
    final convertAll =
        [convertNumber, convertAlphabet, convertSymbol, convertKana].every((element) => element == false);
    var result = input;

    //数字変換
    if (convertAll || convertNumber) {
      final regex = RegExp(r'^[0-9]+$');
      final string = result.runes.map<String>((rune) {
        final char = String.fromCharCode(rune);
        return regex.hasMatch(char) ? String.fromCharCode(rune + _unicodeDifference) : char;
      });
      result = string.join();
    }

    //アルファベット変換
    if (convertAll || convertAlphabet) {
      final regex = RegExp(r'^[A-Za-z]+$');
      final string = result.runes.map<String>((rune) {
        final char = String.fromCharCode(rune);
        return regex.hasMatch(char) ? String.fromCharCode(rune + _unicodeDifference) : char;
      });
      result = string.join();
    }

    //記号変換
    if (convertAll || convertSymbol) {
      final regex = RegExp(r'^[!-/:-@[-`{-~]+$');
      final string = result.runes.map<String>((rune) {
        final char = String.fromCharCode(rune);
        return regex.hasMatch(char) ? String.fromCharCode(rune + _unicodeDifference) : char;
      });
      result = string.join().replaceAll(' ', '　');
    }

    //カナ変換
    if (convertAll || convertKana) {
      final regex = RegExp(r'[ｱ-ﾝﾞﾟｰァ-ｮ]ﾞ?ﾟ?');
      result = result.replaceAllMapped(regex, (Match match) {
        final fullwidthKana = _halfwidthToFullwidthKanaMap[match.group(0)!];
        return fullwidthKana ?? match.group(0)!;
      });
    }

    return result;
  }
}
