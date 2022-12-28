import 'package:flutter/material.dart';
import '../../../Components/primary_btn.dart';
import '../../../Components/appbar.dart';
import '../../../Components/spacer.dart';
import '../../../Declarations/Constants/constants.dart';

import '../Widget/a_header_widget.dart';
import '../Widget/b_swiper_widget.dart';
import '../Widget/c_list_tile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: title),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardLayout(),
            HeightSpacer(myHeight: kSpacing),
            const Settings(),
            HeightSpacer(myHeight: kSpacing),
          ],
        ),
      ),
    );
  }
}

class CardLayout extends StatelessWidget {
  const CardLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          HeightSpacer(myHeight: kSpacing / 2),
          const SwiperBuilder(),
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Featured',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          HeightSpacer(myHeight: kSpacing),
          const ListTileBldr(
            title: 'View analytics',
            icon: Icons.bar_chart_outlined,
          ),
          HeightSpacer(myHeight: kSpacing / 2),
          const ListTileBldr(
            title: 'Passbook',
            icon: Icons.book_outlined,
          ),
          HeightSpacer(myHeight: kSpacing / 2),
          const ListTileBldr(
            title: 'Add Money',
            icon: Icons.monetization_on,
          ),
          HeightSpacer(myHeight: kSpacing * 2),
          Align(
              alignment: Alignment.bottomCenter,
              child: PrimaryBtn(btnText: 'Continue', btnFun: () {}))
        ],
      ),
    );
  }
}
