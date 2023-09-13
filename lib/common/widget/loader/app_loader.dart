import 'package:flutter/cupertino.dart';

import '../../constans/app_colors.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key, this.color = AppColors.text});

  final Color color;

  @override
  Widget build(BuildContext context) => CupertinoActivityIndicator(color: color);
}
