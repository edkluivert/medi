import 'package:flutter/material.dart';
import 'package:medi/core/config/app_color.dart';
import 'package:medi/data/model/tab_model.dart';

import '../../../core/config/app_textstyles.dart';

class TabItem extends StatelessWidget {
  final TabModel tabModel;
  final Color bgColor;
  final VoidCallback onTap;
  const TabItem({super.key, required this.tabModel, required this.bgColor, required this.onTap});

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 119,
          height: 48,
          child: Center(
            child: Text(
              tabModel.title,
              style: _textStyle.displayMedium,
            ),
          ),
        ),
      ),
    );
  }
}
