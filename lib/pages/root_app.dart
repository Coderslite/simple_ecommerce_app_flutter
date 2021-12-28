import 'package:angela_yu/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: black,
      appBar: getAppBar(),
      bottomNavigationBar: getFooter(),
    );
  }

  getAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: appBarColor,
        title: Row(
          children: [
            SvgPicture.asset("image/slr.svg"),
            const Text("Wordpower",style: TextStyle(fontSize: 35,),)
          ],
        ),
      );
    }
  }

  Widget getFooter() {
    List bottomItems = [
      "image/home_active_icon.svg",
      "image/home_active_icon.svg",
      "image/home_active_icon.svg",
      "image/home_active_icon.svg",
      "image/home_active_icon.svg",

      // pageIndex == 0
      // ? "image/home_active_icon.svg"
      // : "image/home_icon.svg",
      // pageIndex == 1
      // ? "image/search_icon.svg"
      // : "image/search_icon.svg",
      // pageIndex == 2
      // ? "image/plus.svg"
      // : "image/plus.svg",
      // pageIndex == 3
      // ? "image/account.svg"
      // : "image/account.svg",
    ];
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
        color: appFooterColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
          top: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
              onTap: () {
                selectedTab(index);
              },
              child: SvgPicture.asset(
                "image/plus.svg",
                width: 27,
              ),
            );
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
