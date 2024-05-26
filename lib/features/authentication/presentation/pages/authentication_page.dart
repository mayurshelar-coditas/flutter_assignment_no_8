import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/authentication/presentation/widgets/sign_in_widget.dart';
import 'package:assignment8/features/home/presentation/widgets/zoom_drawer.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: AppPallete.secondBackground,
            body: Column(
              children: [
                Expanded(
                  flex: 42,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppPallete.whiteColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0F000000),
                          offset: Offset(0, 4),
                          blurRadius: 30,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: SizedBox(),
                        ),
                        Image.asset(
                          'assets/images/Bella.png',
                          // height: 162,
                          // width: 131,
                          fit: BoxFit.cover,
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        const TabBar(
                          dividerHeight: 0,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: AppPallete.blackColor,
                          unselectedLabelColor: AppPallete.blackColor,
                          indicatorPadding:
                              EdgeInsets.only(left: 50, right: 50),
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              color: AppPallete.primaryColor,
                              width: 3,
                            ),
                          ),
                          tabs: [
                            Tab(
                              child: Flexible(
                                child: Text(
                                  maxLines: 1,
                                  'Login',
                                  style: TextStyle(
                                    fontFamily: 'sfProText',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Flexible(
                                child: Text(
                                  maxLines: 1,
                                  'Sign-up',
                                  style: TextStyle(
                                    fontFamily: 'sfProText',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 58,
                  child: TabBarView(
                    children: [
                      SignInWidget(),
                      SignInWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 42,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ZoomDrawerWidget(),
                    ),
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: AppPallete.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Flexible(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppPallete.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'sfProText',
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
