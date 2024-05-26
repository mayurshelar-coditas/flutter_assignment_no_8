import 'package:assignment8/core/theme/app_pallete.dart';
import 'package:assignment8/features/my_profile/presentation/widgets/profile_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyProfileUpdatePage extends StatelessWidget {
  const MyProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.thirdBackground,
      appBar: AppBar(
        leadingWidth: 96,
        backgroundColor: AppPallete.thirdBackground,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My profile",
                style: TextStyle(
                  fontFamily: "sfProText",
                  fontWeight: FontWeight.w600,
                  fontSize: 34,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Text(
                    textScaler: MediaQuery.textScalerOf(context).scale(15) > 1.5
                        ? const TextScaler.linear(1)
                        : MediaQuery.textScalerOf(context),
                    "Personal details",
                    style: const TextStyle(
                      fontFamily: "sfProText",
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      textScaler:
                          MediaQuery.textScalerOf(context).scale(15) > 1.5
                              ? const TextScaler.linear(1)
                              : MediaQuery.textScalerOf(context),
                      "change",
                      style: const TextStyle(
                        color: AppPallete.primaryColor,
                        fontFamily: "sfProText",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const ProfileInfoWidget(),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: const BoxDecoration(
                    color: AppPallete.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const Text(
                      "Orders",
                      style: TextStyle(
                        fontFamily: "sfProText",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/right_arrow.svg"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: const BoxDecoration(
                  color: AppPallete.whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const Text(
                      "Pending reviews",
                      style: TextStyle(
                        fontFamily: "sfProText",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/right_arrow.svg"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: const BoxDecoration(
                    color: AppPallete.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const Text(
                      "Faq",
                      style: TextStyle(
                        fontFamily: "sfProText",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/right_arrow.svg"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: const BoxDecoration(
                  color: AppPallete.whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const Text(
                      "Help",
                      style: TextStyle(
                        fontFamily: "sfProText",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/right_arrow.svg"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              SizedBox(
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
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Flexible(
                      child: Text(
                        'Update',
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
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
