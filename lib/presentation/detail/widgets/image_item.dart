import 'package:flutter/material.dart';
import 'package:medi/core/constants/app_constants.dart';
import 'package:medi/core/utils/image_util.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width/1.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(
          ImageUtil.getImagePath(mountainIM),
        ), fit: BoxFit.cover)
      ),
    );
  }
}
