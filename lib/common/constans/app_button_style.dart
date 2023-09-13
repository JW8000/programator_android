import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text.dart';

class AppButtonStyle {
  const AppButtonStyle._();

  static const shapeStandard = ButtonStyle(
    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)))),
  );
  static const shapeRoundedLeft = ButtonStyle(
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          bottomLeft: Radius.circular(4),
        ),
      ),
    ),
  );

  static const shapeRoundedRight = ButtonStyle(
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
    ),
  );

  static const sizeStandard = ButtonStyle(
    padding: MaterialStatePropertyAll(EdgeInsets.all(12)),
    minimumSize: MaterialStatePropertyAll(Size(0, 48)),
    iconSize: MaterialStatePropertyAll(22),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );

  static const sizeSmall = ButtonStyle(
    padding: MaterialStatePropertyAll(EdgeInsets.all(8)),
    minimumSize: MaterialStatePropertyAll(Size(0, 36)),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );

  static const textStandard = ButtonStyle(textStyle: MaterialStatePropertyAll(AppText.button));

  static const colorPrimary = ButtonStyle(
    foregroundColor: MaterialStatePropertyAll(Colors.white),
    backgroundColor: MaterialStatePropertyAll(AppColors.primary),
  );

  static const colorPrimaryOutlined = ButtonStyle(
    foregroundColor: MaterialStatePropertyAll(AppColors.primary),
    backgroundColor: MaterialStatePropertyAll(Colors.transparent),
    side: MaterialStatePropertyAll(BorderSide(color: AppColors.primary)),
  );

  static const colorWhite = ButtonStyle(
    foregroundColor: MaterialStatePropertyAll(AppColors.primary),
    backgroundColor: MaterialStatePropertyAll(Colors.white),
  );

  static const colorWhiteOutlined = ButtonStyle(
    foregroundColor: MaterialStatePropertyAll(Colors.white),
    backgroundColor: MaterialStatePropertyAll(Colors.transparent),
    side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
  );

  // composite styles
  static final standard = shapeStandard.merge(sizeStandard).merge(textStandard);

  static final primary = colorPrimary.merge(standard);
  static final primaryOutlined = colorPrimaryOutlined.merge(standard);
  static final white = colorWhite.merge(standard);
  static final whiteOutlined = colorWhiteOutlined.merge(standard);
}
