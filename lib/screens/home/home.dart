import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kwik_mandi/utils.dart';

import '../../constants.dart';
import 'homeScreenBody.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String heading = "Home", title = "자유톡";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newAppBar(title, context),

      body: const HomeScreenBody(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
