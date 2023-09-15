import 'package:flutter/material.dart';
import 'package:programator_android/common/constans/app_button_style.dart';
import 'package:programator_android/common/constans/app_colors.dart';
import 'package:programator_android/common/widget/loader/app_loader.dart';

class AppButton extends StatelessWidget {
  final bool enabled, loading;
  final Widget? icon;
  final Widget child;
  final Widget Function({
    ButtonStyle? style,
    required void Function()? onPressed,
    required Widget? child,
  }) builder;
  final ButtonStyle style;
  final void Function() onPressed;

  const AppButton({
    super.key,
    required this.builder,
    required this.style,
    this.enabled = true,
    this.loading = false,
    required this.onPressed,
    required this.child,
    this.icon,
  });

  AppButton.filled({
    super.key,
    ButtonStyle? style,
    this.enabled = true,
    this.loading = false,
    required this.onPressed,
    required this.child,
    this.icon,
  })  : builder = FilledButton.new,
        style = style ?? AppButtonStyle.primary;

  AppButton.outlined({
    super.key,
    ButtonStyle? style,
    required this.onPressed,
    required this.child,
    this.loading = false,
    this.icon,
  })  : builder = OutlinedButton.new,
        style = style ?? AppButtonStyle.primaryOutlined,
        enabled = true;

  @override
  Widget build(BuildContext context) {
    return builder(
      style: style,
      onPressed: switch (enabled) {
        true when loading => () {},
        true => onPressed,
        false => null,
      },
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null) _buildIcon(),
        const SizedBox(width: 8),
        Flexible(child: _buildChild()),
      ],
    );
  }

  Widget _buildChild() {
    if (loading) {
      return AppLoader(color: style.foregroundColor?.resolve({}) ?? AppColors.primary);
    }
    return child;
  }

  Widget _buildIcon() =>
      IconTheme(data: IconThemeData(size: _iconSize, color: style.foregroundColor?.resolve({})), child: icon!);

  double get _iconSize => style.iconSize!.resolve({})!;
}
