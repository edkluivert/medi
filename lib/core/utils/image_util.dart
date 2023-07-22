import 'package:flutter_svg/flutter_svg.dart';

class ImageUtil {
  static String getImagePath(String name, {String format = 'png'}) {
    return 'assets/images/$name.$format';
  }

  static String getIconPath(String name, {String format = 'svg'}) {
    return 'assets/icons/$name.$format';
  }

  static String getLottiePath(String name, {String format = 'json'}) {
    return 'assets/lottie/$name.$format';
  }



}
extension ImageExt on String{
  String svg(){
    return 'svg';
  }

  String png(){
    return 'png';
  }
}