import 'package:flutter/material.dart';
import 'package:get/get.dart';
  
 

AppBar appBar({
  List<Widget>? actions,
  required String title,
}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    scrolledUnderElevation: 0,
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: const Icon(Icons.arrow_back_ios),
    ),
    actions: actions,
  );
}
