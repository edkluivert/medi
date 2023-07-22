import 'package:flutter/material.dart';
import 'package:medi/core/config/app_color.dart';
import 'package:medi/core/constants/app_constants.dart';

import '../../../core/config/app_textstyles.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28, bottom: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 7),
                 child: Text(discoverStr, style: _textStyle.displayLarge,),
               ),
               const SizedBox(height: 12,),
               Container(width: 32,
                 height: 2,
                 decoration: BoxDecoration(
                 color: AppColor.accentColor
               ),)
            ],
          ),
          const Icon(Icons.search, size: 24,)
        ],
      ),
    );
  }
}
