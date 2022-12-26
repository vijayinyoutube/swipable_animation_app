import 'package:flutter/material.dart';
import '../../../Components/appbar.dart';
import '../../../Components/spacer.dart';
import '../../../Declarations/Constants/constants.dart';

import '../Widget/a_header_widget.dart';
import '../Widget/b_swiper_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: title),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ),
        child: Column(
          children: [
            HeightSpacer(myHeight: kSpacing),
            const HeaderWidgets(),
            HeightSpacer(myHeight: kSpacing),
            const SwiperBuilder(),
          ],
        ),
      ),
    );
  }
}
