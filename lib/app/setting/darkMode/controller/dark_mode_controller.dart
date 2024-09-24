import 'package:get/get.dart';

class DarkModeController extends GetxController {
  var isDark = false.obs;

  changeMode() {
    isDark.value = !isDark.value;
  }
}
