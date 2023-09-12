import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class AppText {
  static TextStyle hint = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColor.hint,
  );

  static const TextStyle title = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColor.text,
  );

  static const TextStyle textVerySmall = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColor.text,
  );

  static const TextStyle button = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColor.text,
  );

  static const TextStyle header = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 21,
    fontWeight: FontWeight.w400,
    color: AppColor.header,
  );
}
