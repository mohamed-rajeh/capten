import 'package:capten/app/home/model/order_model.dart';
import 'package:capten/app/home/view/widget/order_state_drop_down.dart';
import 'package:capten/app/home/view/widget/order_table_widget.dart';
import 'package:capten/components/animation/fade_in.dart';
import 'package:capten/components/constants/app_them.dart';
import 'package:cherry_toast/cherry_toast.dart';
 
import 'package:flutter/material.dart';
 
import 'package:get/get.dart';

showtust(context) {
  CherryToast.success(
      title: const Text(
    "Order Canceled successfully",
    style: TextStyle(color: Colors.black),
  )).show(context);
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
    void change() {
      changed.value = !changed.value;
    }

    return Container(
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
              clinteName(),
              const SizedBox(height: 12),
              clinteNumber(),
              const SizedBox(height: 12),
              restrantName(),
              const SizedBox(height: 16),
              moreButton(change, changed),
              const SizedBox(height: 12),
              orderTable(changed),
              const SizedBox(height: 16),
              totalPrice(context),
              const SizedBox(height: 16),
              clintNote(changed),
              const SizedBox(height: 16),
              orderState(context)
            ],
          );
        },
      ),
    );
  }

  Visibility clintNote(RxBool changed) =>
      Visibility(visible: changed.value, child: const ClinteNoteWidget());

  Visibility orderTable(RxBool changed) {
    return Visibility(
      visible: changed.value,
      child: const FadeInAnimation(
          delay: 0.5,
          direction: FadeInDirection.ttb,
          fadeOffset: 5,
          child: OrderTableWidget()),
    );
  }

  InkWell moreButton(void change(), RxBool changed) {
    return InkWell(
      onTap: () => change(),
      child: Icon(!changed.value ? Icons.expand_more : Icons.expand_less),
    );
  }

  Material orderState(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.background.withOpacity(0.6),
        child: const Padding(
          padding: EdgeInsets.all(3.0),
          child: OrderStateDropDownMenu(),
        ));
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

  Text clinteName() {
    return Text(
      "العميل           :  ${_order.name}",
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
