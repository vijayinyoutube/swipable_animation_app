import 'package:flutter/material.dart';

import '../../../Components/spacer.dart';
import '../../../Declarations/Constants/constants.dart';

class HeaderWidgets extends StatelessWidget {
  const HeaderWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.75,
            child: Text(
              'Click to add more credit cards to wallet.',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.75), fontSize: 20),
            ),
          ),
          WidthSpacer(myWidth: kSpacing * 5),
          Container(
            decoration: BoxDecoration(
                borderRadius: kBorderRadius / 1.5, color: accentColor),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
