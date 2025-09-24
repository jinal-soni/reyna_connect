import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/constants/constants_export.dart';
import '../../../../../utils/utils_export.dart';
import '../../../../style/style_exports.dart';
import '../../../../widgets/widgets_exports.dart';

/// Created by: Jinal Soni
/// Date: 04/04/25
/// Description: [Page 3 Widget]

Widget contactUs(BuildContext context, bool isDark) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
    child: Column(
      children: [
        AppText(
            text: AppConstants.contactUs,
            style: isDark
                ? FontTypography.primary18Opacity08Semi.copyWith(fontSize: 20.0)
                : FontTypography.black16Opacity08Semi.copyWith(fontSize: 20.0)),
        sizedBox10(),
        GestureDetector(
          onTap: () async {
            HapticFeedback.mediumImpact();
            await AppUtils.makePhoneCallOrEmail(isPhoneNumber: true, phoneNumber: AppConstants.number);
          },
          child: Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.appPrimaryColor.withValues(alpha:0.5),
            ),
            child: Stack(
              children: [
                Center(
                  child: AppText(
                    text: '${AppConstants.mobileNumberTag}${AppConstants.number}',
                    style: isDark ? FontTypography.fontStyle16PrimaryMed : FontTypography.fontStyle16BlackMed,
                  ),
                ),
                Positioned(
                    top: 0.0,
                    right: 7.0,
                    bottom: 0.0,
                    child: Image.asset(
                      ImageConstants.design1,
                      height: 80,
                      color: isDark ? AppColors.appPrimaryColor : AppColors.appTernaryColor,
                    )),
                Positioned(
                    top: 0.0,
                    left: 5.0,
                    bottom: 0.0,
                    child: Image.asset(
                      ImageConstants.design2,
                      height: 80,
                      color: isDark ? AppColors.appPrimaryColor : AppColors.appTernaryColor,
                    )),
              ],
            ),
          ),
        ),
        sizedBox10(),
        GestureDetector(
          onTap: () async {
            HapticFeedback.mediumImpact();
            await AppUtils.makePhoneCallOrEmail(isPhoneNumber: false, emailAddress: AppConstants.emailId);
          },
          child: Container(
            height: 80.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.appPrimaryColor.withValues(alpha:0.5),
            ),
            child: Stack(
              children: [
                Center(
                  child: AppText(
                    text: '${AppConstants.emailIdTag}${AppConstants.emailId}',
                    style: isDark ? FontTypography.fontStyle16PrimaryMed : FontTypography.fontStyle16BlackMed,
                  ),
                ),
                Positioned(
                    top: 0.0,
                    right: 5.0,
                    bottom: 2.0,
                    child: Image.asset(
                      ImageConstants.design4,
                      height: 80,
                      color: isDark ? AppColors.appPrimaryColor : AppColors.appTernaryColor,
                    )),
                Positioned(
                  top: 0.0,
                  left: 7.0,
                  bottom: 0.0,
                  child: Transform.rotate(
                      angle: 3,
                      child: Image.asset(
                        ImageConstants.design4,
                        height: 80,
                        color: isDark ? AppColors.appPrimaryColor : AppColors.appTernaryColor,
                      )),
                ),
              ],
            ),
          ),
        ),
        sizedBox10(),
        SizedBox(
          height: 80.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: socialMediaContactUs.map((social) {
              return GestureDetector(
                onTap: () async {
                  HapticFeedback.mediumImpact();
                  await AppUtils.openSocialMediaApp(social[AppConstants.link]!);
                },
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
                  child: Image.asset(
                    social[AppConstants.iconName]!,
                    height: 25,
                    width: 25,
                    color: isDark ? AppColors.whiteColor : AppColors.blackColor,
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    ),
  );
}

Widget globalLocations(bool isDark) {
  return Column(
    children: [
      AppText(
        text: AppConstants.globalLoc,
        style: isDark
            ? FontTypography.primary18Opacity08Semi.copyWith(fontSize: 20.0)
            : FontTypography.black16Opacity08Semi.copyWith(fontSize: 20.0),
      ),
      sizedBox10(),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
          child: Wrap(
            runSpacing: Platform.isIOS ? 14.0 : 12.0,
            spacing: Platform.isIOS ? 12.0 : 10.0,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: List.generate(addresses.length, (index) {
              return GestureDetector(
                onTap: () async {
                  HapticFeedback.mediumImpact();
                  await AppUtils.openGoogleMap(addresses[index][AppConstants.location]!);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  width: 115,
                  height: 115,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: isDark ? AppColors.blackColor.withValues(alpha:0.4) : AppColors.whiteColor.withValues(alpha:0.4),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.appPrimaryColor.withValues(alpha:0.4)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.appPrimaryColor.withValues(alpha:0.4),
                          blurRadius: 6,
                          offset: const Offset(-2, 2),
                        ),
                      ]),
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: addresses[index][AppConstants.locationName]!,
                        style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
                        textAlign: TextAlign.center,
                      ),
                      AppText(
                        text: addresses[index][AppConstants.address]!,
                        style: isDark ? FontTypography.fontStyle12PrimarySemi.copyWith(fontSize: 11.0) : FontTypography
                            .fontStyle12TernarySemi.copyWith(fontSize: 11.0),
                        maxLines: 5,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    ],
  );
}

Widget whomWeServeSlider(bool isDark) {
  return Stack(
    children: [
      Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(150)),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
              ),
              items: clientFeedBackCarouselItems.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.appTernaryColor.withValues(alpha:isDark ? 0.3 : 0.6),
                            AppColors.appSecondaryColor.withValues(alpha:isDark ? 0.3 : 0.6),
                            AppColors.appPrimaryColor.withValues(alpha:isDark ? 0.3 : 0.6),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        // color: AppColors.appTernaryColor.withOpacity(0.4),
                      ),
                      padding: const EdgeInsets.only(left: 30.0, right: 15.0, top: 20.0),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0.0,
                            left: 0.0,
                            child: Image.asset(
                              ImageConstants.invertedComma,
                              height: 40.0,
                              color: isDark ? AppColors.appSecondaryColor : AppColors.appTernaryColor2.withValues(alpha:0.6),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              child: AppText(
                                text: '"${item["subTitle"]}"',
                                textAlign: TextAlign.center,
                                style: isDark ? FontTypography.fontStyle14WhiteMed : FontTypography.fontStyle14BlackMed,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8.0,
                            right: 10.0,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      AppText(
                                        text: item["title"]!,
                                        style: isDark
                                            ? FontTypography.white14Opacity08Med
                                            : FontTypography.black14Opacity08Med,
                                        maxLines: 2,
                                      ),
                                      AppText(
                                        text: item["Designation"]!,
                                        style: isDark
                                            ? FontTypography.white12Opacity08Med
                                            : FontTypography.black12Opacity08Med,
                                        maxLines: 2,
                                      ),
                                    ],
                                  ),
                                  sizedBox5Width(),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: isDark ? AppColors.appPrimaryColor : AppColors.appTernaryColor2,
                                    child: Icon(
                                      Icons.person,
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget badgesWeEarned(bool isDark) {
  return Column(
    children: [
      sizedBox10(),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () async {
              await AppUtils.openSocialMediaApp(AppConstants.clutchUrl);
            },
            child: SizedBox(
              height: 90,
              width: 90,
              child: Image.asset(ImageConstants.clutchBadge),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(ImageConstants.goodFirms),
          ),
          SizedBox(
            height: 90,
            width: 90,
            child: Image.asset(ImageConstants.upWorkBadge),
          ),
        ],
      ),
    ],
  );
}

Widget boostingBusinessBrilliance(BuildContext context) {
  return Column(
    children: [
      AppText(
        text: AppConstants.boostingBusinessBrilliance,
        style: FontTypography.white18Opacity08Semi.copyWith(fontSize: 20.0),
      ),
      sizedBox10(),
      Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: AppText(
              maxLines: 23,
              overflow: TextOverflow.ellipsis,
              text: AppConstants.boostingBusinessBrillianceSubString,
              style: FontTypography.white10Opacity08Reg,
              textAlign: TextAlign.justify,
            ),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(50.0), topLeft: Radius.circular(50.0)),
            child: Image.asset(
              ImageConstants.bbb,
              height: 250,
              width: MediaQuery.of(context).size.width / 2.5,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget detailsComprehensive(String selectedComprehensive, List<String> list, bool isDark) {
  return Column(
    children: [
      AppText(
        text: AppUtils.selectedComApproachDetails(selectedComprehensive),
        style: isDark
            ? FontTypography.fontStyle12WhiteLight.copyWith(fontSize: Platform.isIOS ? 11: 10.5)
            : FontTypography.fontStyle12BlackLight.copyWith(fontSize: Platform.isIOS ? 11 : 10.5),
      ),
      sizedBox8(),
      ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "- ",
                  style: isDark ? FontTypography.fontStyle12WhiteReg : FontTypography.fontStyle12BlackReg,
                ),
                Flexible(
                  child: AppText(
                    text: list[index],
                    maxLines: 2,
                    style: isDark ? FontTypography.fontStyle10WhiteLight.copyWith(fontSize: Platform.isIOS ? 12 : 10) : FontTypography.fontStyle10BlackLight
                            .copyWith(fontSize: Platform.isIOS ? 12 : 10),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ],
  );
}
