import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_popularStock.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock({
    required this.stockImagePath,
    required super.yesterdayClosePrice,
    required super.currentPrice,
    required super.stockName,
  });

  double get todayPercentage => ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100).toPrecision(2);

  String get todayPercentageString => "${symbol}$todayPercentage%";

  bool get isPlus => currentPrice > yesterdayClosePrice;
  bool get isSame => currentPrice == yesterdayClosePrice;
  bool get isMinus => currentPrice < yesterdayClosePrice;

  String get symbol => isSame ? "" : isPlus ? "+" : "-";
  Color getPriceColor(BuildContext context) => isSame ? context.appColors.lessImportant: isPlus ? context.appColors.plus:context.appColors.minus;
}
