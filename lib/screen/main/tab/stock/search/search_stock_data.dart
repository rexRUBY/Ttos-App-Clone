import 'package:easy_localization/easy_localization.dart';
import 'package:fast_app_base/common/util/local_json.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_simple_stock.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    super.onInit();

    searchHistoryList.addAll(['삼성전자', 'LG전자', '현대차', '넷플릭스']);
    loadStockData();
  }

  Future<void> loadStockData() async {
    final stockList = await LocalJson.getObjectList<SimpleStock>(
      "json/stock_list.json",
    );
    stocks.addAll(stockList);
  }

  void search(String text) {
    if (text.isBlank!) {
      autoCompleteList.clear();
      return;
    }
    autoCompleteList.value =
        stocks.where((element) => element.name.contains(text)).toList();
    debugPrint(autoCompleteList.toString());
  }

  void addHistory(SimpleStock stock) {
    searchHistoryList.add(stock.name);
  }

  void removeHistory(String stockName) {
    searchHistoryList.remove(stockName);
  }
}
