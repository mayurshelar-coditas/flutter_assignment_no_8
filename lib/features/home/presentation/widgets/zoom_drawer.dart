import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/home/presentation/pages/home_page.dart';
import 'package:assignment8/features/home/presentation/widgets/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ZoomDrawerWidget extends StatelessWidget {
  const ZoomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: AppPallete.primaryColor,
      showShadow: true,
      shadowLayer1Color: AppPallete.primaryColor,
      shadowLayer2Color: const Color(0xFFF96C3B),
      borderRadius: 30,
      slideWidth: MediaQuery.of(context).size.width * 0.68,
      mainScreenScale: 0.4,
      angle: 0.0,
      style: DrawerStyle.defaultStyle,
      menuScreen: const MenuScreen(),
      mainScreen: const HomePage(),
      closeCurve: Curves.bounceIn,
    );
  }
}
