import 'package:assignment8/core/theme/app_pallete.dart';

import 'package:assignment8/features/search/presentation/widgets/grid_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchFoodItem extends StatelessWidget {
  const SearchFoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEEEEEE),
        leadingWidth: 96,
        title: SearchBar(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 17,
              fontFamily: 'sfProRounded',
              fontWeight: FontWeight.w400,
              color: AppPallete.blackColor,
            ),
          ),
          hintText: "Search",
          hintStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 17,
              fontFamily: 'sfProRoundedSemibold',
              fontWeight: FontWeight.w700,
              color: AppPallete.blackColor.withOpacity(0.5),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(const Color(0xFFEEEEEE)),
          elevation: MaterialStateProperty.all(0),
        ),
      ),
      backgroundColor: const Color(0xFFEEEEEE),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          decoration: const BoxDecoration(
            color: AppPallete.forthBackgroud,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 34,
                ),
                const Text(
                  "Found 6 results",
                  style: TextStyle(
                    fontFamily: "sfProRounded",
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                StaggeredGrid.count(
                  axisDirection: AxisDirection.down,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 36,
                  crossAxisCount: 2,
                  children: [
                    GridViewItem(index: 0),
                    const SizedBox(
                      height: 51,
                    ),
                    GridViewItem(index: 1),
                    GridViewItem(index: 2),
                    GridViewItem(index: 3),
                    GridViewItem(index: 4),
                    GridViewItem(index: 1),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
