import 'package:ez_store/all_file/all_file.dart';
import 'package:intl/intl.dart';

extension PriceDataExtendNum on num? {
  String? get toPrice => PriceExtend.strToPriceStr(this?.toString());

  String? get toPriceTwoFraction => PriceExtend.strToPriceStr(this?.toString(),
      numberFormat: PriceExtend.twoFractionPriceFormat);

  String? get billionToFullPrice =>
      this == null ? null : (this! * 1000000000).toString();

  String? get toFullFormattedPrice =>
      PriceExtend.strToFullFormattedPriceStr(toString());

  String? get toBiPoint =>
      '${(this ?? 0).toThousandSeparator()} ${AppConstant.BI_WALLET_UNIT}';

  String? get toKPoint => this == null
      ? null
      : (this! > 1000
          ? '${(this! ~/ 1000).toThousandSeparator()} K'
          : '${this} K');
}

extension PriceDataExtendString on String? {
  String? get toPrice => PriceExtend.strToPriceStr(this);

  String get toPriceWithZero => PriceExtend.strToPriceStr(this) ?? '0';

  String? get toFullFormattedPrice =>
      PriceExtend.strToFullFormattedPriceStr(this);

  String? get toPriceTwoFraction => PriceExtend.strToPriceStr(this,
      numberFormat: PriceExtend.twoFractionPriceFormat);
}

class PriceExtend {
  static final defaultPriceFormat = NumberFormat("###.#########", "vi_VN");
  static final twoFractionPriceFormat = NumberFormat("###.##", "vi_VN");
  static final fullWithUnitFormatted = NumberFormat.currency(
    locale: "vi_VN",
    symbol: AppConstant.PRICE_UNIT,
    decimalDigits: 0,
  );

  static final numberFormat = NumberFormat.decimalPattern("vi_VN");

  static String? strToNumberFormat(String? str) {
    if (str.isNullOrEmpty()) return null;
    try {
      var parse = num.tryParse(str ?? '');
      if (parse == null) {
        return null;
      }
      return numberFormat.format(parse);
    } catch (e) {
      logger.e(e);
    }
    return null;
  }

  static num? strToNumberParse(String? str) {
    if (str.isNullOrEmpty()) return null;
    try {
      return numberFormat.parse(str ?? '0');
    } catch (e) {
      logger.e(e);
    }
    return null;
  }

  static String? strToFullFormattedPriceStr(String? priceStr) {
    if (priceStr.isNullOrEmpty()) return null;
    try {
      return fullWithUnitFormatted.format(num.tryParse(priceStr ?? ''));
    } catch (e) {
      logger.e(e);
    }
    return null;
  }

  static String? strToPriceStr(String? priceStr, {NumberFormat? numberFormat}) {
    if (priceStr.isNullOrEmpty()) return null;

    try {
      final _numberFormat = numberFormat ?? defaultPriceFormat;

      final n = num.parse(priceStr!);
      if (n < 1e3) {
        return _numberFormat.format(n);
      }
      if (n >= 1e3 && n < 1e6) {
        return '${_numberFormat.format((n / 1e3))} ${'THOUSAND_LEVEL'}';
      }
      if (n >= 1e6 && n < 1e9) {
        return '${_numberFormat.format((n / 1e6))} ${'MILLION_LEVEL'}';
      }
      if (n >= 1e9) {
        return '${_numberFormat.format((n / 1e9))} ${'BILLION_LEVEL'}';
      }
      return _numberFormat.format(n);
    } catch (e) {
      logger.e(e);
    }
    return null;
  }
}
