import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodItemDescription extends StatefulWidget {
  const FoodItemDescription({super.key});

  @override
  State<FoodItemDescription> createState() => _FoodItemDescriptionState();
}

class _FoodItemDescriptionState extends State<FoodItemDescription> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  final List<String> _imageUrls = [
    "assets/images/dish_one.png",
    "assets/images/dish_one.png",
    "assets/images/dish_one.png",
    "assets/images/dish_one.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: AppPallete.thirdBackground,
        appBar: AppBar(
          backgroundColor: AppPallete.thirdBackground,
          leadingWidth: 96,
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/heart.svg",
                // ignore: deprecated_member_use
                color: AppPallete.blackColor,
              ),
            ),
            const SizedBox(
              width: 18,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: _imageUrls
                    .map(
                      (item) => Container(
                        height: MediaQuery.sizeOf(context).height * 0.2689,
                        width: MediaQuery.sizeOf(context).height * 0.2689,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF000000).withOpacity(0.07),
                              offset: const Offset(0, 2),
                              blurRadius: 10,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          item,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    )
                    .toList(),
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: false,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _currentIndex = index;
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 38.0),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: _currentIndex,
                  count: _imageUrls.length,
                  effect: const ScrollingDotsEffect(
                    activeDotColor: AppPallete.primaryColor,
                    dotColor: Color(0xFFC4C4C4),
                    dotHeight: 8,
                    activeDotScale: 1,
                    dotWidth: 8,
                  ),
                  onDotClicked: (index) {
                    _controller.animateToPage(index);
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "Veggie tomato mix",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: "sfProRoundedRegular",
                      height: 0.9,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "N1,900",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: AppPallete.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: "sfProRounded",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Delivery info",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: "sfProRoundedRegular",
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: AppPallete.blackColor.withOpacity(0.5),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: "sfProText",
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Return policy",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: "sfProRoundedRegular",
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: AppPallete.blackColor.withOpacity(0.5),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: "sfProText",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: AppPallete.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 25,
                      ),
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        'Add to cart',
                        style: TextStyle(
                          color: AppPallete.whiteColor,
                          fontFamily: 'sfProText',
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
      // Positioned(
      //   bottom: 0,
      //   right: 0,
      //   left: 0,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       horizontal: 50,
      //       vertical: 40,
      //     ),
      //     child:
      //   ),
    ]);
  }
}
