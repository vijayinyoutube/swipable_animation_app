import 'package:flutter/material.dart';

import '../../../Declarations/Constants/constants.dart';

class ListTileBldr extends StatelessWidget {
  const ListTileBldr({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: kBorderRadius / 2,
          color: secondaryColor.withOpacity(0.125)),
      child: ListTile(
        leading: Icon(
          icon,
          color: primaryColor,
          size: 35,
        ),
        title: Text(title,
            style: const TextStyle(
              fontSize: 18,
            )),
        trailing: const Icon(
          Icons.navigate_next_outlined,
          color: Colors.grey,
          size: 30,
        ),
      ),
    );
  }
}
