import 'package:capten/app/setting/darkMode/controller/dark_mode_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkModeButon extends StatelessWidget {
  const DarkModeButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DarkModeController());
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Obx(() {
        return IconButton(
            onPressed: () => controller.changeMode(),
            icon: Icon(
              controller.isDark.value
                  ? Icons.wb_sunny_outlined
                  : Icons.dark_mode_outlined,
              size: 30,
            ));
      }),
    );
  }
}
