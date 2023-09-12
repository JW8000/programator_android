import 'package:flutter/cupertino.dart';

import '../../constans/app_colors/app_colors.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key, this.color = AppColor.text });

  final Color color;

  @override
  Widget build(BuildContext context) => CupertinoActivityIndicator(color: color);
}