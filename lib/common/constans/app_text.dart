import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppText {
  //TODO: znajdź sobie jakiś font na necie i zrób tym fontem to z różnymi Weight
  static TextStyle hint = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.hint,
  );

  static const TextStyle title = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );

  static const TextStyle textVerySmall = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );

  static const TextStyle button = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.text,
  );

  static const TextStyle header = TextStyle(
    fontFamily: 'ABeeZee',
    fontSize: 21,
    fontWeight: FontWeight.w400,
    color: AppColors.header,
  );
}
