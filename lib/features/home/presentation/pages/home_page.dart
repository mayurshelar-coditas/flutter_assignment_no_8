
import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/cart/presentation/pages/cart_page.dart';
import 'package:assignment8/features/home/presentation/pages/food_item_description.dart';

import 'package:assignment8/features/home/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:assignment8/features/home/presentation/widgets/food_item_container_widget.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';


import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.secondBackground,
      appBar: AppBar(
        leadingWidth: 130,
        backgroundColor: AppPallete.secondBackground,
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            ),
            icon: SvgPicture.asset("assets/icons/shopping-cart.svg"),
          ),
          const SizedBox(
            width: 18,
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 50,
          ),
          child: DefaultTabController(
            length: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Delicious \nfood for you",
                  style: TextStyle(
                    fontFamily: "sfProRounded",
                    fontSize: 34,
                    height: 1.16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: SearchBar(
                    hintText: "Search",
                    hintStyle: MaterialStateProperty.all(
                      TextStyle(
                        fontSize: 17,
                        fontFamily: 'sfProRoundedSemibold',
                        fontWeight: FontWeight.w700,
                        color: AppPallete.blackColor.withOpacity(0.5),
                      ),
                    ),
                    leading: SvgPicture.asset('assets/icons/search.svg'),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.only(left: 35, top: 10, bottom: 10),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                        AppPallete.searchBarBackground),
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
                const SizedBox(
                  height: 46,
                ),
                const TabBar(
                  unselectedLabelColor: AppPallete.thirdText,
                  isScrollable: true,
                  dividerHeight: 0,
                  labelColor: AppPallete.primaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.only(top: 45),
                  indicatorWeight: 2,
                  indicatorColor: AppPallete.primaryColor,
                  indicator: BoxDecoration(
                    color: AppPallete.primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xC33F151A), // Use the alpha color format
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "Foods",
                        style: TextStyle(
                          fontFamily: "sfProText",
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Drinks",
                        style: TextStyle(
                          fontFamily: "sfProText",
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Snacks",
                        style: TextStyle(
                          fontFamily: "sfProText",
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Sauce",
                        style: TextStyle(
                          fontFamily: "sfProText",
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "see more",
                        style: TextStyle(
                          fontFamily: 'sfProRoundedSemibold',
                          color: AppPallete.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                AutoScaleTabBarView(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FoodItemDescription(),
                              ),
                            ),
                            child: FoodItemContainerWidget(index: 0),
                          ),
                          const SizedBox(
                            width: 34,
                          ),
                          FoodItemContainerWidget(index: 1),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FoodItemDescription(),
                              ),
                            ),
                            child: FoodItemContainerWidget(index: 0),
                          ),
                          const SizedBox(
                            width: 34,
                          ),
                          FoodItemContainerWidget(index: 1),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FoodItemDescription(),
                              ),
                            ),
                            child: FoodItemContainerWidget(index: 0),
                          ),
                          const SizedBox(
                            width: 34,
                          ),
                          FoodItemContainerWidget(index: 1),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FoodItemDescription(),
                              ),
                            ),
                            child: FoodItemContainerWidget(index: 0),
                          ),
                          const SizedBox(
                            width: 34,
                          ),
                          FoodItemContainerWidget(index: 1),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
