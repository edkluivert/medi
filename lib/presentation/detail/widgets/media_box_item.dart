import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi/core/config/app_color.dart';
import 'package:medi/core/constants/app_constants.dart';
import 'package:medi/core/utils/image_util.dart';

class MediaBoxItem extends StatefulWidget {
  const MediaBoxItem({super.key});

  @override
  State<MediaBoxItem> createState() => _MediaBoxItemState();
}

class _MediaBoxItemState extends State<MediaBoxItem> {

  int selectedItem = 0;
  var icons = [audioIC, videoIC];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height/8,
      child: ListView.separated(
        itemCount: icons.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(bottom: 22, left: 28, right: 28),
        itemBuilder: (context, index){
        return Column(
          children: [
            boxItem(icon: icons[index], index: index),
            const SizedBox(height: 22,),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: selectedItem == index ? Container(
                height: 2,
                width: 56,
                color: AppColor.accentColor,
              ) : const SizedBox.shrink(),
            )
          ],
        );
      },
      separatorBuilder: (context, index){
        return const SizedBox(width: 16,);
      },
      ),
    );
  }

  Widget boxItem(
  {
    required  String icon,
    required int index,
}

      ){
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white.withOpacity(0.10),
      child: InkWell(
        onTap: (){
          setState(() {
            selectedItem = index;
          });
        },
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 56,
          height: 56,
          child: Center(
            child: SvgPicture.asset(ImageUtil.getIconPath(icon)),
          ),
        ),
      ),
    );
  }
}
