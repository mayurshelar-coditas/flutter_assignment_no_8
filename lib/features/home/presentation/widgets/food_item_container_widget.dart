import 'package:assignment8/core/constants/constants.dart';
import 'package:assignment8/core/di/di_container.dart';
import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/home/data/models/food_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodItemContainerWidget extends StatelessWidget {
  FoodItemContainerWidget({super.key, required this.index});
  final int index;
  late final FoodItemModel foodItem = locator<Constants>().foodItems[index];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          // top: 50,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppPallete.whiteColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF393939).withOpacity(0.1),
                      offset: const Offset(8, 20),
                      blurRadius: 16,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 54,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 140,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        foodItem.name,
                        style: const TextStyle(
                          height: 0.898,
                          fontFamily: 'sfProRoundedRegular',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(
                        foodItem.rating,
                        style: const TextStyle(
                          color: AppPallete.primaryColor,
                          fontFamily: 'sfProRoundedRegular',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
              )
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            height: 164,
            width: 164,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.07),
                  offset: const Offset(0, 40),
                  blurRadius: 40,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Image.asset(
              foodItem.image,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}
