import 'package:capten/app/home/model/order_model.dart';
import 'package:capten/app/home/view/widget/custom_order_card.dart';
import 'package:flutter/material.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({
    super.key,
    required this.orders,
  });

  final List<Order> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      itemCount: orders.length,
      itemBuilder: (context, index) => CustomOrderCard(order: orders[index]),
    );
  }
}
