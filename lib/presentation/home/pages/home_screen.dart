import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medi/core/constants/app_constants.dart';
import 'package:medi/data/model/tab_model.dart';
import 'package:medi/presentation/home/widgets/recommended_card.dart';
import 'package:medi/presentation/home/widgets/tab_item.dart';
import 'package:medi/presentation/home/widgets/top_header.dart';

import '../../../core/config/app_color.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var listOfTabs = <TabModel>[
    TabModel('Insomnia'),
    TabModel('Depression'),
    TabModel('Baby Sleep'),
    TabModel('Fantasy')
  ];

  var imageBgList = <String>[blueBgIM, pinkBgIM, yellowBgIM];

  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopHeader(),
            SizedBox(
              height: 50,
              child: ListView.separated(
                shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfTabs.length,
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  physics: BouncingScrollPhysics(),
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
            SizedBox(
              height: size.height/5,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imageBgList.length,
                padding: const EdgeInsets.only(left: 28, right: 28, top: 28),
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index){
                  return RecommendedCard(imageBg: imageBgList[index],);
                },
                separatorBuilder: (context, index){
                  return const SizedBox(width: 12,);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
