import 'package:flutter/material.dart' show kToolbarHeight;

import 'device.dart';

class Global {
  static Device device;

  static bool regLocale = false;

  static const bool IS_TEST_VER = true;
  static const String CURRENT_SERVICE =
      (IS_TEST_VER) ? TEST_BASE_URL : TY_BASE_URL;

  static const String CACHED_COOKIE = 'CACHED_USER_COOKIE';

  static const String TEST_BASE_URL = "https://eg990.com/";
  static const String TY_BASE_URL = "https://www.vip66729.com/";

  static const double APP_BAR_HEIGHT = kToolbarHeight - 8;
}
