import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/company_page/page_3_widget.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/widgets_exports.dart';
import 'package:reyna_solution_app/src/utils/utils_export.dart';

/// Created by: Jinal Soni
/// Date: 19/03/25
/// Description: [Page3Screen]

class Page3Screen extends StatefulWidget {
  final bool isDark;

  const Page3Screen({super.key, required this.isDark});

  @override
  State<Page3Screen> createState() => _Page3ScreenState();
}

class _Page3ScreenState extends State<Page3Screen>
    with TickerProviderStateMixin {
  ///For image animation
  late AnimationController _imageAnimationController;
  late Animation<Offset> _slideImageAnimation;
  List<String>? list;
  String? selectedComprehensive;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    ///image slider
    _imageAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _slideImageAnimation =
        Tween<Offset>(begin: const Offset(1.5, 0), end: const Offset(0, 0))
            .animate(CurvedAnimation(
                parent: _imageAnimationController, curve: Curves.easeOut));
    _imageAnimationController.forward();

    selectedComprehensive = comprehensiveList[0];
    list = analysisList;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            whomWeServeSlider(widget.isDark),
            sizedBox10(),
            badgesWeEarned(widget.isDark),
            sizedBox25(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Column(
                children: [
                  // sizedBox10(),
                  // boostingBusinessBrilliance(context),
                  ourComprehensiveAcross(widget.isDark),
                  // aboutUs(context),
                ],
              ),
            ),
            sizedBox25(),
            clientBenefits(),
            sizedBox20(),
            globalLocations(widget.isDark),
            sizedBox20(),
            contactUs(context, widget.isDark),
            sizedBox20(),
          ],
        ),
      ),
    );
  }

  Widget ourComprehensiveAcross(bool isDark) {
    return Column(
      children: [
        AppText(
          text: AppConstants.ourComprehensiveApproach,
          style: isDark
              ? FontTypography.primary18Opacity08Semi.copyWith(fontSize: 20.0)
              : FontTypography.black16Opacity08Semi.copyWith(fontSize: 20.0),
        ),
        AppText(
          text: AppUtils.toTitleCase(
              AppConstants.ourComprehensiveApproachSubString),
          style: Platform.isIOS
              ? isDark
                  ? FontTypography.white14Opacity08Reg
                  : FontTypography.black14Opacity08Reg
              : isDark
                  ? FontTypography.white12Opacity08Med
                  : FontTypography.black12Opacity08Med,
          textAlign: TextAlign.center,
        ),
        sizedBox30(),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 350,
              child: ListView.builder(
                  itemCount: comprehensiveList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        sizedBox30(),
                        GestureDetector(
                          onTap: () async {
                            HapticFeedback.lightImpact();
                            setState(() {
                              selectedComprehensive = comprehensiveList[index];
                            });
                            list = AppUtils.listPoints(selectedComprehensive!);
                          },
                          child: AppText(
                            maxLines: 23,
                            overflow: TextOverflow.ellipsis,
                            text: comprehensiveList[index],
                            style: selectedComprehensive ==
                                    comprehensiveList[index]
                                ? isDark
                                    ? FontTypography.secondary16Opacity08Semi
                                    : FontTypography.ternary16Opacity08Semi
                                : isDark
                                    ? FontTypography.white16Opacity08Reg
                                    : FontTypography.black16Opacity08Reg,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Image.asset(ImageConstants.divider, height: 300),
            const Spacer(),
            Container(
              height: 300,
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                gradient: LinearGradient(colors: [
                  AppColors.appTernaryColor
                      .withValues(alpha: isDark ? 0.3 : 0.6),
                  AppColors.appSecondaryColor
                      .withValues(alpha: isDark ? 0.2 : 0.5),
                  AppColors.appPrimaryColor
                      .withValues(alpha: isDark ? 0.1 : 0.4),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(
                      text: selectedComprehensive!,
                      style: isDark
                          ? FontTypography.fontStyle14PrimaryBold
                          : FontTypography.fontStyle14TernaryBold,
                    ),
                    detailsComprehensive(
                        selectedComprehensive!, list ?? [], isDark),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget clientBenefits() {
    return Column(
      children: [
        AppText(
            text: AppConstants.clientBenefits,
            style: widget.isDark
                ? FontTypography.primary18Opacity08Semi.copyWith(fontSize: 20.0)
                : FontTypography.black16Opacity08Semi.copyWith(fontSize: 20.0)),
        sizedBox5(),
        AppText(
          text: AppConstants.clientBenefitsSubStr,
          style: widget.isDark
              ? FontTypography.white14Opacity08Reg
              : FontTypography.black14Opacity08Reg,
          textAlign: TextAlign.center,
        ),
        Container(
          // height: 250,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          decoration: BoxDecoration(
            color: AppColors.appPrimaryColor.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.appPrimaryColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 15 / 8,
                        enlargeCenterPage: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        }),
                    items: clientBenefitsItems.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                item["Icon"] ?? '',
                                height: 50,
                                width: 50,
                              ),
                              sizedBox15(),
                              AppText(
                                text: item["title"] ?? '',
                                style: widget.isDark
                                    ? FontTypography.secondary16Opacity08Med
                                        .copyWith(fontSize: 18.0)
                                    : FontTypography.black16Opacity08Med
                                        .copyWith(fontSize: 18.0),
                              ),
                              sizedBox20(),
                              SizedBox(
                                width: 250,
                                child: AppText(
                                  text: item["subTitle"] ?? '',
                                  style: widget.isDark
                                      ? FontTypography.fontStyle14WhiteMed
                                      : FontTypography.fontStyle14BlackMed,
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              Positioned(
                  top: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: Image.asset(
                    ImageConstants.design1,
                    // height: 80,
                    color: AppColors.appPrimaryColor,
                  )),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _imageAnimationController.dispose();
    super.dispose();
  }
}
