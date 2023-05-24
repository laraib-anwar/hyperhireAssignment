import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

AppBar newAppBar(String heading, context) {
  return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(Icons.arrow_back_ios_new,
                  color: kIconBackColor, size: 16),
              onPressed: () => {}),
          Text(
            heading,
            style: const TextStyle(color: kGrey1, fontSize: headerFontSize),
          ),
          SvgPicture.asset(
            "assets/icons/bell.svg",
            width: 24,
            height: 24,
          )
        ],
      ),
      automaticallyImplyLeading: false,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ));
}

AppBarTheme AppTheme() {
  return const AppBarTheme(
    color: Colors.white,
  );
}
