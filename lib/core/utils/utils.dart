import 'package:flutter/cupertino.dart';

class Utils {
  Utils._();

  static void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}
