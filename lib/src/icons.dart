import 'package:flutter/widgets.dart';

class MyFlutterApp {
  static void debugPrintIcons() {
    print('=== Package Icons Debug ===');
    print('Font Family: $_kFontFam');
    print('icon_check code: 0x${icon_check.codePoint.toRadixString(16)}');
    print('icon_close code: 0x${icon_close.codePoint.toRadixString(16)}');
    print('===========================');
  }

  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData icon_send = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_shopping_cart = IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData eye_off = IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData eye_up = IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_check = IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_chevron_down = IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_chevron_left = IconData(0xe807, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_close = IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_delete = IconData(0xe809, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_dismiss = IconData(0xe80a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_download = IconData(0xe80b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_file_text = IconData(0xe80c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_filter = IconData(0xe80d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_message_circle = IconData(0xe80e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_mic = IconData(0xe80f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_minus = IconData(0xe810, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_map = IconData(0xe811, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_more_horizontal = IconData(0xe812, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_paperclip = IconData(0xe813, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_plus = IconData(0xe814, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData icon_chevron_right = IconData(0xe815, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
