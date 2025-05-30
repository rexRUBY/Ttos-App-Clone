import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../vo/dummy_interests_stock.dart';
import 'w_stock_item.dart';

class InterestStockList extends StatefulWidget {
  const InterestStockList({Key? key}) : super(key: key);

  @override
  State<InterestStockList> createState() => _InterestStockListState();
}

class _InterestStockListState extends State<InterestStockList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      color: context.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height20,
          ...myInterestStocks.map((e) => StockItem(e)).toList(),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
