import 'package:flutter/material.dart';
import 'package:programator_android/common/constans/app_text/app_text.dart';
import '../../constans/app_colors/app_colors.dart';

enum ButtonType {filled, outlined}

abstract class ButtonFactory {
  factory ButtonFactory(ButtonType type) {
    switch (type) {
      case ButtonType.filled:
        return Filled("w");

      case ButtonType.outlined:
        return Outlined("");
    }
  }
}

class Filled implements ButtonFactory {
  final String title;

  Filled(this.title);

  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)), backgroundColor: AppColor.button),
        onPressed: () {},
        child: Text(title, style: AppText.button),
      ),
    );
  }
}

class Outlined implements ButtonFactory {
  final String title;

  Outlined(this.title);

  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)), backgroundColor: AppColor.button),
        onPressed: () {},
        child: Text(title, style: AppText.button),
      ),
    );
  }
}
