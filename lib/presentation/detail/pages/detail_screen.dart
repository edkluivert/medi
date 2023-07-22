import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi/core/config/app_color.dart';
import 'package:medi/core/constants/app_constants.dart';
import 'package:medi/core/utils/image_util.dart';
import 'package:medi/presentation/detail/widgets/image_item.dart';
import 'package:medi/presentation/detail/widgets/media_box_item.dart';

import '../../../core/config/app_textstyles.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: const BackButton(color: Colors.white,),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkResponse(

                child: SvgPicture.asset(ImageUtil.getIconPath(heartIC))),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: SizedBox(
          width: size.width,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
             backgroundColor: AppColor.accentColor, onPressed: () {  },
            child: Center(
              child: Text(
                'Start',
                style: _textStyle.displayMedium,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
           padding: const EdgeInsets.only(left: 28),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(sleepMedStr, style: _textStyle.displayLarge,),
               const SizedBox(height: 10,),
               Opacity(
                   opacity: 0.70,
                   child: Text(bestPractiseStr, style: _textStyle.displayMedium,)),
             ],
           ),
         ),
          SizedBox(
            height: size.height/3,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              padding: const EdgeInsets.only(top: 24, bottom: 23,left: 28, right: 28),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index){
                return const ImageItem();
              },
              separatorBuilder: (context, index){
                return const SizedBox(width: 20,);
              },
            ),
          ),
          const MediaBoxItem(),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Opacity(
                opacity: 0.70,
                child: Text(contentStr, style: _textStyle.displayMedium,)),
          ),
        ],
      ),
    );
  }
}
