import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi/core/config/app_color.dart';
import 'package:medi/core/constants/app_constants.dart';
import 'package:medi/core/utils/image_util.dart';

import '../../../core/config/app_textstyles.dart';
import '../../../core/utils/custom_page_route.dart';
import '../../detail/pages/detail_screen.dart';

class RecentCard extends StatelessWidget {

  final List<Color> imageBg;

  const RecentCard({super.key, required this.imageBg});

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Material(
      shadowColor: Colors.grey[50],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: size.width/2,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: imageBg,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          shadowColor: Colors.grey[50],
          child: InkWell(
            onTap: (){
              final detail = DetailScreen();
              Navigator.of(context).push(CustomPageRoute(detail));
            },
            splashColor: Colors.white30,
            borderRadius: BorderRadius.circular(26),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(sleepMedStr, style: _textStyle.displayLarge.copyWith(
                      fontSize: 22
                  ),),
                  SvgPicture.asset(ImageUtil.getIconPath(audioIC)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
