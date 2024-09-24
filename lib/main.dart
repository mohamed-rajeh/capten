import 'package:capten/app/app.dart';
import 'package:capten/app/setting/darkMode/controller/dark_mode_controller.dart';
import 'package:capten/components/theme/dark_theme.dart';
import 'package:capten/components/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Intl.defaultLocale = 'ar';

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var darkModeController = Get.put(DarkModeController());
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: const Locale("ar"),
        title: 'Hous Project Dash',
        theme: darkModeController.isDark.value ? darkTheme : lightTheme,
        darkTheme: darkModeController.isDark.value ? darkTheme : lightTheme,
        home: const App(),
      );
    });
  }
}
