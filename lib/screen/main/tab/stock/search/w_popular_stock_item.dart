import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_popularStock.dart';
import 'package:flutter/material.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;
  const PopularStockItem({required this.stock, required this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 40,
            child: number.text.make()),
        width30,
        stock.name.text.make(),
        emptyExpended,
        stock.todayPercentageString.text.color(stock.getTodayPercentageColor(context)).make()

      ],
    ).pSymmetric(v:25);
  }
}
