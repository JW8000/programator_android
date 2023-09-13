import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFF776A87);

  //TODO: popraw reszte z 00xxxxxx na FFxxxxxxx (inaczej nie zadziała)
  static const Color primary = Colors.blue; //TODO add primary color

  static const Color text = Color(0x00FFFFFF);

  static final Color button = const Color(0x00000000).withOpacity(0.75); //tu final

  static const Color border = Color(0x00000000);

  static const Color header = Color(0x002C2C2E);

  static const Color icon = Color(0x00FFFFFF);

  static const Color appBar = Color(0x00FFFFFF);

  static const Color appBarIcon = Color(0x00000000);

  static final Color hint = const Color(0x00FFFFFF).withOpacity(0.50); //i tu też final
}
