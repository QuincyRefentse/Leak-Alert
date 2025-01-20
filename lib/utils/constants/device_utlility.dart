import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';

class TDeviceUtils {
  // Returns the height of the bottom navigation bar.
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  // Returns the height of the app bar.
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // Returns the height of the keyboard by accessing MediaQuery.
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  // Checks if the keyboard is visible by inspecting viewInsets.
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  // Checks if the device is physical or a web platform.
  static Future<bool> isPhysicalDevice() async {
    return !(await _isWeb());
  }

  // Private method to check if the platform is web.
  static Future<bool> _isWeb() async {
    return kIsWeb;
  }
}
