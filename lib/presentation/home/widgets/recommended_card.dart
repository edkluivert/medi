import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi/core/config/app_color.dart';
import 'package:medi/core/constants/app_constants.dart';
import 'package:medi/core/utils/image_util.dart';

import '../../../core/config/app_textstyles.dart';

class RecommendedCard extends StatelessWidget {

  final String imageBg;

  const RecommendedCard({super.key, required this.imageBg});

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Material(
      shadowColor: Colors.grey[50],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
      child: Container(
        width: size.width/1.3,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(26),
          gradient: LinearGradient(
            colors: [ AppColor.accentColor, Colors.pinkAccent,],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
         //  image: DecorationImage(
         //    //image: AssetImage(ImageUtil.getImagePath(imageBg)),
         //    fit: BoxFit.cover
         //  )
        ),
        child: Material(
          type: MaterialType.transparency,
          elevation: 6.0,
          color: Colors.transparent,
          shadowColor: Colors.grey[50],
          child: InkWell(
            onTap: (){

            },
            splashColor: Colors.white30,
            borderRadius: BorderRadius.circular(26),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(sleepMedStr, style: _textStyle.displayLarge.copyWith(
                          fontSize: 22
                      ),),
                      Text(sleepSubTitle, style: _textStyle.displayMedium),
                    ],
                  ),

                  Row(
                    children: [
                      SvgPicture.asset(ImageUtil.getIconPath(audioIC)),
                      SizedBox(width: 20,),
                      SvgPicture.asset(ImageUtil.getIconPath(videoIC)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
