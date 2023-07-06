// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:uplabs_1/core/core_methods.dart';
import 'package:uplabs_1/pages/destination_page.dart';
import 'package:uplabs_1/pages/ticket_page.dart';

import 'holiday_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double width;
  late double height;

  late PageController pageController;
  late int pageIndex = 0;

  pageControllerButton() {
    if (pageIndex == 0) {
      return SkipTextButton(
        onPressed: () {
          pageController.jumpToPage(1);
        },
      );
    } else if (pageIndex == 1) {
      return SkipTextButton(
        onPressed: () {
          pageController.jumpToPage(2);
        },
      );
    } else {
      return const GetStartedButton();
    }
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: mainPageView(),
            ),
            Expanded(flex: 1, child: pageControllerButton()),
            const Spacer(),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  lineSpace(),
                  mainPageIndexLine(0),
                  mainPageIndexLine(1),
                  mainPageIndexLine(2),
                  lineSpace(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PageView mainPageView() {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (int index) {
        setState(() {
          pageIndex = index;
        });
      },
      children: const <Widget>[
        Destination(),
        Holiday(),
        Travel(),
      ],
    );
  }

  SizedBox lineSpace() {
    return SizedBox(
      width: width / 5,
    );
  }

  Container mainPageIndexLine(int index) {
    return Container(
      color: pageIndex == index ? Colors.grey[800] : Colors.grey[400],
      height: 5,
      width: width / 10,
    );
  }
}
