import 'package:flutter/material.dart';

import '../../../../../core/constants/constants_export.dart';
import '../../../../../utils/utils_export.dart';
import '../../../../style/style_exports.dart';
import '../../../../widgets/widgets_exports.dart';

/// Created by: Jinal Soni
/// Date: 20/05/25
/// Description: []

class KnowMoreAboutUs extends StatefulWidget {
  final bool isDark;

  const KnowMoreAboutUs({super.key, required this.isDark});

  @override
  State<KnowMoreAboutUs> createState() => _KnowMoreAboutUsState();
}

class _KnowMoreAboutUsState extends State<KnowMoreAboutUs> {
  @override
  Widget build(BuildContext context) {
    return BackgroundUi(
      isDark: widget.isDark,
      otherWidget: Scaffold(
        backgroundColor: AppColors.transparentColor,
        appBar: MyAppBar(
          title: '',
          centerTitle: false,
          isIcon: true,
          backBtn: false,
          isDark: widget.isDark,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: AppText(
                  text: AppConstants.knowMoreAboutUs,
                  style: widget.isDark
                      ? FontTypography.fontStyle18PrimarySemi.copyWith(fontSize: 20.0)
                      : FontTypography.fontStyle16BlackSemi.copyWith(fontSize: 20.0),
                ),
              ),
              sizedBox15(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                child: AppText(
                  text: AppConstants.ourCoreExpertise,
                  style: widget.isDark
                      ? FontTypography.fontStyle18PrimarySemi
                      : FontTypography.fontStyle16BlackSemi.copyWith(fontSize: 18.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: gradientBorderBox(
                  borderWidth: 4,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                  backgroundColor: widget.isDark ? AppColors.blackColor : AppColors.whiteColor,
                  gradient: LinearGradient(
                    colors: [AppColors.appPrimaryColor, AppColors.appSecondaryColor, AppColors.appTernaryColor2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: AppConstants.whereDepthMeets,
                          style: widget.isDark
                              ? FontTypography.fontStyle16PrimarySemi
                              : FontTypography.fontStyle16BlackSemi,
                        ),
                        sizedBox10(),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: ourCoreExpertise.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  text: ourCoreExpertise[index][AppConstants.numbering]!,
                                  style: widget.isDark
                                      ? FontTypography.fontStyle16WhiteSemi
                                      : FontTypography.fontStyle16BlackSemi,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 1.2,
                                  child: AppText(
                                    text: ourCoreExpertise[index][AppConstants.subTitle]!,
                                    style: widget.isDark
                                        ? FontTypography.fontStyle14WhiteReg
                                        : FontTypography.fontStyle14BlackReg,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              sizedBox15(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: gradientBorderBox(
                  borderWidth: 4,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                  backgroundColor: widget.isDark ? AppColors.blackColor : AppColors.whiteColor,
                  gradient: LinearGradient(
                    colors: [AppColors.appPrimaryColor, AppColors.appSecondaryColor, AppColors.appTernaryColor2],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: '${AppConstants.typesOfDomainsWeServe}:',
                          style: widget.isDark
                              ? FontTypography.fontStyle16PrimarySemi
                              : FontTypography.fontStyle16BlackSemi,
                        ),
                        sizedBox10(),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: typesOfDomainsWeServe.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppText(
                                  text: typesOfDomainsWeServe[index][AppConstants.numbering]!,
                                  style: widget.isDark
                                      ? FontTypography.fontStyle16WhiteSemi
                                      : FontTypography.fontStyle16BlackSemi,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 1.2,
                                  child: AppText(
                                    text: typesOfDomainsWeServe[index][AppConstants.subTitle]!,
                                    style: widget.isDark
                                        ? FontTypography.fontStyle14WhiteReg
                                        : FontTypography.fontStyle14BlackReg,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              sizedBox25(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AppText(
                  text: AppConstants.companyJourney,
                  style: widget.isDark
                      ? FontTypography.fontStyle18PrimarySemi
                      : FontTypography.fontStyle16BlackSemi.copyWith(fontSize: 18.0),
                ),
              ),
              sizedBox10(),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: companyYear.length,
                itemBuilder: (context, index) {
                  bool isOdd = index % 2 == 0;
                  return Container(
                    // height: 150.0,
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            isOdd
                                ? CircleAvatar(
                                    radius: 40,
                                    backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.5),
                                    child: CircleAvatar(
                                      radius: 38,
                                      backgroundColor: widget.isDark ? AppColors.blackColor : AppColors.whiteColor,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(companyYear[index]['Icon'] ?? '', height: 40, width: 40),
                                          Visibility(
                                            visible: (companyYear[index]['image']?.isNotEmpty ?? false) ? true : false,
                                            child:
                                                Image.asset(companyYear[index]['image'] ?? '', height: 35, width: 35),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    width: MediaQuery.of(context).size.width / 2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          text: companyYear[index]['years'] ?? '',
                                          style: widget.isDark
                                              ? FontTypography.fontStyle16PrimarySemi
                                              : FontTypography.fontStyle16BlackSemi,
                                        ),
                                        AppText(
                                          text: companyYear[index]['subTitle'] ?? '',
                                          style: widget.isDark
                                              ? FontTypography.fontStyle14PrimaryReg
                                              : FontTypography.fontStyle14BlackReg,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                            sizedBox10Width(),
                            isOdd
                                ? SizedBox(
                                    width: MediaQuery.of(context).size.width / 2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          text: companyYear[index]['years'] ?? '',
                                          style: widget.isDark
                                              ? FontTypography.fontStyle16PrimarySemi
                                              : FontTypography.fontStyle16BlackSemi,
                                        ),
                                        AppText(
                                          text: companyYear[index]['subTitle'] ?? '',
                                          style: widget.isDark
                                              ? FontTypography.fontStyle14PrimaryReg
                                              : FontTypography.fontStyle14BlackReg,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 10,
                                        ),
                                      ],
                                    ),
                                  )
                                : CircleAvatar(
                                    radius: 40,
                                    backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.5),
                                    child: CircleAvatar(
                                      radius: 38,
                                      backgroundColor: widget.isDark ? AppColors.blackColor : AppColors.whiteColor,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(companyYear[index]['Icon'] ?? '', width: 40, height: 40),
                                          Visibility(
                                            visible: (companyYear[index]['image']?.isNotEmpty ?? false) ? true : false,
                                            child:
                                                Image.asset(companyYear[index]['image'] ?? '', width: 35, height: 35),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              sizedBox10(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AppText(
                  text: AppConstants.aboutUs,
                  style: widget.isDark
                      ? FontTypography.fontStyle18PrimarySemi
                      : FontTypography.fontStyle16BlackSemi.copyWith(fontSize: 18.0),
                ),
              ),
              sizedBox10(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: AppConstants.decadeOfExcellence,
                      style:
                          widget.isDark ? FontTypography.fontStyle14PrimarySemi.copyWith(fontSize: 15) : FontTypography.fontStyle14BlackSemi
                              .copyWith(fontSize: 15),
                    ),
                    sizedBox10(),
                    AppText(
                      text: '- ${AppConstants.decadeOfExcellenceP1}',
                      style: widget.isDark
                          ? FontTypography.fontStyle14PrimaryMed
                          : FontTypography.fontStyle14BlackMed,
                    ),
                    sizedBox10(),
                    AppText(
                      text: '- ${AppConstants.decadeOfExcellenceP2}',
                      style: widget.isDark
                          ? FontTypography.fontStyle14PrimaryMed
                          : FontTypography.fontStyle14BlackMed,
                    ),
                    sizedBox10(),
                    AppText(
                      text: '- ${AppConstants.decadeOfExcellenceP3}',
                      style: widget.isDark
                          ? FontTypography.fontStyle14PrimaryMed
                          : FontTypography.fontStyle14BlackMed,
                    ),
                  ],
                ),
              ),
              sizedBox20(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: AppText(
                  text: AppConstants.unleashYourBusinessPotential,
                  style: widget.isDark
                      ? FontTypography.fontStyle18PrimarySemi
                      : FontTypography.fontStyle16BlackSemi.copyWith(fontSize: 18.0),
                ),
              ),
              sizedBox10(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '- ',
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimarySemi : FontTypography.fontStyle12BlackSemi,
                      ),
                      TextSpan(
                        text: AppConstants.unleashYourBusinessPotentialP1,
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimarySemi : FontTypography.fontStyle12BlackSemi,
                      ),
                      TextSpan(
                        text: AppConstants.unleashYourBusinessPotentialP1S,
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12BlackMed,
                      ),
                    ],
                  ),
                ),
              ),
              sizedBox5(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '- ',
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimarySemi : FontTypography.fontStyle12BlackSemi,
                      ),
                      TextSpan(
                        text: AppConstants.unleashYourBusinessPotentialP2,
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimarySemi : FontTypography.fontStyle12BlackSemi,
                      ),
                      TextSpan(
                        text: AppConstants.unleashYourBusinessPotentialP2S,
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12BlackMed,
                      ),
                    ],
                  ),
                ),
              ),
              sizedBox5(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '- ',
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimarySemi : FontTypography.fontStyle12BlackSemi,
                      ),
                      TextSpan(
                        text: AppConstants.unleashYourBusinessPotentialP3,
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimarySemi : FontTypography.fontStyle12BlackSemi,
                      ),
                      TextSpan(
                        text: AppConstants.unleashYourBusinessPotentialP3S,
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12BlackMed,
                      ),
                    ],
                  ),
                ),
              ),
              sizedBox5(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '- ',
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimarySemi : FontTypography.fontStyle12BlackSemi,
                      ),
                      TextSpan(
                        text: AppConstants.unleashYourBusinessPotentialP4,
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimarySemi : FontTypography.fontStyle12BlackSemi,
                      ),
                      TextSpan(
                        text: AppConstants.unleashYourBusinessPotentialP4S,
                        style:
                            widget.isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12BlackMed,
                      ),
                    ],
                  ),
                ),
              ),
              sizedBox50(),
            ],
          ),
        ),
      ),
    );
  }

  Widget gradientBorderBox({
    required Widget child,
    required double borderWidth,
    required BorderRadius borderRadius,
    required Gradient gradient,
    required Color backgroundColor,
  }) {
    return Container(
      decoration: BoxDecoration(gradient: gradient, borderRadius: borderRadius),
      padding: EdgeInsets.all(borderWidth),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: borderRadius.topLeft - Radius.circular(borderWidth),
            topRight: borderRadius.topRight - Radius.circular(borderWidth),
            bottomLeft: borderRadius.bottomLeft - Radius.circular(borderWidth),
            bottomRight: borderRadius.bottomRight - Radius.circular(borderWidth),
          ),
        ),
        child: child,
      ),
    );
  }
}
