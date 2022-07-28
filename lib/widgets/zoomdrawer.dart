import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ticci/screens/navdrawer.dart';

class ZoomDrawerMaker extends StatefulWidget {
  const ZoomDrawerMaker({super.key, required this.mainScreen});
  static const id = 'ZoomDrawerMaker';
  final Widget mainScreen;

  @override
  State<ZoomDrawerMaker> createState() => _ZoomDrawerMakerState();
}

class _ZoomDrawerMakerState extends State<ZoomDrawerMaker> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.defaultStyle,
      mainScreen: widget.mainScreen,
      menuScreen: const Navdrawer(),
      menuBackgroundColor: const Color(0xFFFA4A0C),
      angle: 0,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.white12,
    );
  }
}