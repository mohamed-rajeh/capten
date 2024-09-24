import 'package:capten/app/home/model/order_model.dart';
import 'package:capten/app/home/view/widget/order_table_widget.dart';
import 'package:capten/components/animation/fade_in.dart';
import 'package:capten/components/constants/app_them.dart';
import 'package:capten/components/shared/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TempOrdersScreen extends StatelessWidget {
  const TempOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Order> orders = [
      Order(2, 5000.2, "الحمدي", "777777777",
          name: "عبده علي", state: "قيد المراجعه", date: DateTime.now()),
      Order(4, 4000.2, "السرايا", "777777777",
          name: "حسن احمد", state: "قيد المراجعه", date: DateTime.now()),
      Order(1, 2000.2, "الشرق", "777777777",
          name: "امحسينة", state: "تم", date: DateTime.now()),
    ];
    return Scaffold(
        appBar: appBar(title: "ارشيف الطلبات"),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: orders.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomOrderCard(
                order: orders[index],
              );
            },
          ),
        ));
  }
}

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

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
    required Order order,
  }) : _order = order;

  final Order _order;

  @override
  Widget build(BuildContext context) {
    var changed = false.obs;

    change() {
      changed.value = !changed.value;
    }

    return InkWell(
      onTap: () => change(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(0),
                topRight: Radius.circular(30)),
            boxShadow: [BoxShadow(color: AppThem.primaryColor)]),
        child: Obx(
          () {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                orderId(),
                const SizedBox(height: 16),
                changed.value
                    ? const FadeInAnimation(
                        delay: 0.5,
                        direction: FadeInDirection.ttb,
                        fadeOffset: 5,
                        child: OrderTableWidget())
                    : const Center(child: Icon(Icons.more_horiz_outlined)),
                const SizedBox(height: 16),
                totalPrice(context),
                const SizedBox(height: 16),
                changed.value
                    ? const ClinteNoteWidget()
                    : const SizedBox.shrink(),
              ],
            );
          },
        ),
      ),
    );
  }

  Row totalPrice(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "المجموع       :  " "${_order.total}" " ريال",
          style: AppThem.nfontStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary),
        ),
        Text(
          " كاش 💵",
          style: AppThem.nfontStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary),
        ),
      ],
    );
  }

  Text restrantName() {
    return Text(
      "المطعم         :  ${_order.rName}",
      style: AppThem.nfontStyle,
    );
  }

  Text clinteNumber() {
    return Text(
      "رقم العميل   :  ${_order.cNumber}",
      style: AppThem.nfontStyle,
    );
  }

  Text orderId() {
    return Text(
      "رقم الطلب           :  ${_order.id}",
      style: AppThem.nfontStyle,
    );
  }
}

class ClinteNoteWidget extends StatelessWidget {
  const ClinteNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ملاحظة العميل  :",
          style: TextStyle(color: AppThem.white),
        ),
        const SizedBox(height: 12),
        Material(
          borderRadius: BorderRadius.circular(6),
          color: AppThem.black,
          child: Align(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "ما قاله العميل ليتم ملاحظتة ",
              style: TextStyle(color: AppThem.secondaryColor),
            ),
          )),
        ),
      ],
    );
  }
}
