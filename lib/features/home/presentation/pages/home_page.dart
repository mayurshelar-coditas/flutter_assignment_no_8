import 'package:assignment8/core/contants/contants.dart';
import 'package:assignment8/core/themes/app_pallete.dart';
import 'package:assignment8/features/home/presentation/pages/product_description_page.dart';
import 'package:assignment8/features/home/presentation/widgets/category_widget.dart';
import 'package:assignment8/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:assignment8/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:assignment8/features/home/presentation/widgets/product_widget.dart';
import 'package:assignment8/features/home/presentation/widgets/text_box_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final CarouselController carouselController = CarouselController();
  static late BuildContext buildContext;

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    var mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppPallete.whiteColor,
          appBar: CustomAppBar(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            mediaQuery: mediaQuery,
          ),
          body: Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.029,
              right: screenWidth * 0.032,
              bottom: mediaQuery.padding.bottom,
              top: screenHeight * 0.0297029,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: CarouselSlider(
                          carouselController: carouselController,
                          items: Constants.latestList
                              .map(
                                (e) => SizedBox(
                                  width: screenWidth * 0.936,
                                  height: screenHeight * 0.2413366,
                                  child: Image(
                                    image: AssetImage(e),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                              .toList(),
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            viewportFraction: 1,
                            scrollPhysics: const NeverScrollableScrollPhysics(),
                            autoPlay: false,
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.0621188119,
                        left: screenWidth * 0.63333,
                        right: screenWidth * 0.026666,
                        child: Column(
                          children: [
                            Text(
                              "This season’s latest",
                              softWrap: true,
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: GoogleFonts.playfairDisplay(
                                fontSize: screenWidth * 0.058666,
                                fontWeight: FontWeight.w700,
                                backgroundColor: AppPallete.whiteColor,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.0211148515,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () =>
                                      carouselController.previousPage(),
                                  child: Container(
                                    height: screenHeight * 0.0631188119,
                                    width: screenWidth * 0.136,
                                    padding: EdgeInsets.fromLTRB(
                                        screenWidth * 0.032,
                                        screenHeight * 0.0176701,
                                        screenWidth * 0.03034666,
                                        screenHeight * 0.0188219),
                                    decoration: const BoxDecoration(
                                      color: AppPallete.blackColor,
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/left_arrow.svg',
                                      height: screenHeight * 0.0302617,
                                      width: screenWidth * 0.0736533,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.004,
                                ),
                                InkWell(
                                  onTap: () => carouselController.nextPage(),
                                  child: Container(
                                    height: screenHeight * 0.0631188119,
                                    width: screenWidth * 0.136,
                                    padding: EdgeInsets.fromLTRB(
                                        screenWidth * 0.032,
                                        screenHeight * 0.0176701,
                                        screenWidth * 0.03034666,
                                        screenHeight * 0.0188219),
                                    decoration: const BoxDecoration(
                                      color: AppPallete.blackColor,
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/right_arrow.svg',
                                      height: screenHeight * 0.0302617,
                                      width: screenWidth * 0.0736533,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.0495049505,
                  ),
                  SingleChildScrollView(
                    child: GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      primary: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: screenHeight * 0.0297020,
                        crossAxisSpacing: screenWidth * 0.034666,
                        childAspectRatio: 0.7999,
                      ),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    ProductDescriptionPage(index: index),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return child; // No animation, directly show the new page
                            },
                          ),
                        ),
                        child: ProductWidget(
                          product: Constants.products[index],
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  InkWell(
                    onTap: () {},
                    child: TextBoxWidget(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        textToDisplay: 'CHECK ALL LATEST '),
                  ),
                  SizedBox(
                    height: screenHeight * 0.0594,
                  ),
                  Text(
                    'Shop by categories',
                    style: GoogleFonts.playfairDisplay(
                      fontWeight: FontWeight.w700,
                      fontSize: 0.064 * screenWidth,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: screenHeight * 0.0297029703,
                  ),
                  SingleChildScrollView(
                    child: GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      primary: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: screenHeight * 0.0297029,
                        crossAxisSpacing: screenWidth * 0.032,
                        childAspectRatio: 0.7999,
                      ),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {},
                        child: CategoryWidget(
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                          category: Constants.categories[index],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.0445544554,
                  ),
                  InkWell(
                    onTap: () {},
                    child: TextBoxWidget(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        textToDisplay: 'BROWSE ALL CATEGORIES'),
                  ),
                  SizedBox(
                    height: screenHeight * 0.12376,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.822 + mediaQuery.padding.top,
          left: screenWidth * 0.029,
          right: screenWidth * 0.032,
          bottom: mediaQuery.padding.bottom,
          child: CustomBottomNavigationBar(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            bodyContext: context,
          ),
        ),
      ],
    );
  }
}
