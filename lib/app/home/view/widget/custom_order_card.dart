import 'package:capten/app/home/model/order_model.dart';
import 'package:capten/app/home/view/widget/order_details_wdgit.dart';
import 'package:flutter/material.dart';

class CustomOrderCard extends StatelessWidget {
  const CustomOrderCard({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 30, right: 12, left: 12),
            child: OrderDetailsWidget(order: order)),
        // location button
        locationButton(context),
      ],
    );
  }

  Positioned locationButton(BuildContext context) {
    return Positioned(
      top: 0,
      right: -10,
      child: IconButton(
        onPressed: () {
          print("dd");
        },
        icon: Icon(
          Icons.location_on_rounded,
          size: 34,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
