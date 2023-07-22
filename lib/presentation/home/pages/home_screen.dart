import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medi/core/constants/app_constants.dart';
import 'package:medi/data/model/tab_model.dart';
import 'package:medi/presentation/home/widgets/recent_card.dart';
import 'package:medi/presentation/home/widgets/recommended_card.dart';
import 'package:medi/presentation/home/widgets/tab_item.dart';
import 'package:medi/presentation/home/widgets/top_header.dart';

import '../../../core/config/app_color.dart';
import '../../../core/config/app_textstyles.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  var listOfTabs = <TabModel>[
    TabModel('Insomnia'),
    TabModel('Depression'),
    TabModel('Baby Sleep'),
    TabModel('Fantasy')
  ];

  var imageBgList = <String>[blueBgIM, pinkBgIM, yellowBgIM, greenBgIM];

  var recentBg = <List<Color>>[
    [AppColor.gradPurple1, AppColor.gradPurple2],
    [AppColor.gradPeach1, AppColor.gradPeach2],
    [AppColor.gradGreen1, AppColor.gradGreen2,],
    [AppColor.gradOrange1, AppColor.gradOrange2,],

  ];

  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(

          children: [
            const TopHeader(),
            SizedBox(
              height: 50,
              child: ListView.separated(
                shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfTabs.length,
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                  return TabItem(tabModel: listOfTabs[index],
                      bgColor: listOfTabs[index].title == selectedItem ? AppColor.accentColor : AppColor.tabBgColor,
                     onTap: (){
                       setState(() {
                         selectedItem = listOfTabs[index].title;
                       });
                     },
                  );
              },
              separatorBuilder: (context, index){
                  return const SizedBox(width: 12,);
              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 28, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text(recommendedStr, style: _textStyle.displaySmall,),
                  Text(seeAllStr, style: _textStyle.displaySmall.copyWith(
                    color: AppColor.accentColor
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: size.height/5,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: recentBg.length,
                padding: const EdgeInsets.only(left: 28, right: 28),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index){
                  return RecommendedCard(imageBg: recentBg[index],);
                },
                separatorBuilder: (context, index){
                  return const SizedBox(width: 20,);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 28, bottom: 16),
              child: Text(recentStr, style: _textStyle.displaySmall,),
            ),
            SizedBox(
              child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 28),
                physics: const BouncingScrollPhysics(),
                itemCount: recentBg.length,
                itemBuilder: (context, index) => RecentCard(imageBg: recentBg[index]),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 19,
                    mainAxisSpacing: 16
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
