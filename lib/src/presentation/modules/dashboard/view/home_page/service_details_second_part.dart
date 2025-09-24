import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/widgets_exports.dart';

Widget mobileDetails(BuildContext context, bool isDark) {
  /// mobile dev across diverse staggered grid
  List<StaggeredGridTile> cardTileAcrossDiverse = [
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.healthCareServiceAcross,
        title: AppConstants.healthCare,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.hrmsServiceAcross,
        title: AppConstants.hrms,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.edTechServiceAcross,
        title: AppConstants.edTech,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.saasServiceAcross,
        title: AppConstants.saas,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.erpServiceAcross,
        title: AppConstants.erp,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.crmServiceAcross,
        title: AppConstants.crm,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container()),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.aiServiceAcross,
        title: AppConstants.ai,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container()),
  ];

  ///Mobile staggered grid list
  List<StaggeredGridTile> cardTileMobileCuttingEdge = [
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.nativeAppDev,
          title: AppConstants.nativeAppDev,
          subText: AppConstants.nativeAppDevSubTitle),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.2,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.crossPlatformDevelopment,
          title: AppConstants.crossPlatformDev,
          subText: AppConstants.enterpriseMobSolSubTitle),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.18,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.customAppDev,
          title: AppConstants.customAppDev,
          subText: AppConstants.customAppDevSubTitle),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.androidAppDevelopment,
          title: AppConstants.androidAppDev,
          subText: AppConstants.androidAppDevSubTitle),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.22,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.enterpriseMobSol,
          title: AppConstants.enterpriseMobSolution,
          subText: AppConstants.enterpriseMobSolSubTitle),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.2,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.iosAppDev,
          title: AppConstants.iOSAppDev,
          subText: AppConstants.iOSAppDevSubTitle),
    ),
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child:
                    AppText(text: AppConstants.decadeInMob, maxLines: 2, style: FontTypography.white16Opacity08Bold)),
            sizedBox20(),
            AppText(
                text: AppConstants.decadeInMobSubTitle,
                style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Stack(
          children: [
            Positioned(
                top: 30, child: AppText(text: AppConstants.techWeWorkOn, style: FontTypography.fontStyle18WhiteSemi)),
            Positioned(top: 50, child: AppText(text: AppConstants.mobile, style: FontTypography.fontStyle18WhiteSemi)),
            Positioned(
              top: 70,
              left: 0.0,
              right: 0.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child:
                    AppText(text: AppConstants.mobileSubStr, style: FontTypography.fontStyle10WhiteSemi, maxLines: 3),
              ),
            ),
            SvgPicture.asset(ImageConstants.mobileTechSvg),
            Positioned(
              top: 250,
              right: 0.0,
              left: 0.0,
              child: AppText(text: AppConstants.cuttingEdgeMobDev, style: FontTypography.fontStyle18WhiteSemi),
            ),
            Positioned(
              top: 300,
              left: 0.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: AppText(
                    text: AppConstants.cuttingEdgeMobDevSubText,
                    style: FontTypography.fontStyle10WhiteSemi,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SizedBox(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: cardTileMobileCuttingEdge,
          ),
        ),
      ),
      sizedBox10(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Stack(
          children: [
            SvgPicture.asset(ImageConstants.mobDevProcess, height: 350),
            Positioned(
              top: 40.0,
              left: 0.0,
              right: 0.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AppText(
                  text: AppConstants.ourStreamLineProcess,
                  style: FontTypography.fontStyle16WhiteSemi,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Positioned(
              top: 85.0,
              left: 0.0,
              right: 0.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: AppText(
                  text: AppConstants.ourStreamLineProcessSubText,
                  style: FontTypography.fontStyle10WhiteSemi,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Positioned(
              top: 240.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: AppText(
                  text: AppConstants.mobServiceAcrossDiverse,
                  style: FontTypography.fontStyle16WhiteSemi,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Positioned(
              top: 290.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: AppText(
                  text: AppConstants.mobServiceAcrossDiverseSubText,
                  style: FontTypography.fontStyle10WhiteSemi,
                  maxLines: 4,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SizedBox(
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: cardTileAcrossDiverse,
          ),
        ),
      ),
      sizedBox70(),
    ],
  );
}

Widget uiUxDetails(BuildContext context, bool isDark) {
  ///Ui ux design service staggered grid
  List<StaggeredGridTile> uiUxDesignService = [
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.15,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.userResearch,
          title: AppConstants.userResearch,
          subText: AppConstants.userResearchSubString),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.2,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.wireframingAndPrototype,
          title: AppConstants.wireFramePrototype,
          subText: AppConstants.wireFramePrototypeSubString),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.visualDesign,
          title: AppConstants.visualDesign,
          subText: AppConstants.visualDesignSubString),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.interactionDesign,
          title: AppConstants.interactionDesign,
          subText: AppConstants.interactionDesignSubString),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.usabilityTesting,
          title: AppConstants.usabilityTesting,
          subText: AppConstants.usabilityTestingSubString),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.05,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.continuousImprovement,
          title: AppConstants.continuesImprovement,
          subText: AppConstants.continuousImproveSubString),
    ),
  ];
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: AppText(
            text: AppConstants.transformDigitalPresence,
            maxLines: 2,
            style: FontTypography.white16Opacity08Bold,
          ),
        ),
        sizedBox20(),
        AppText(
            text: AppConstants.transformDigitalPresenceSubString,
            style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed),
        SizedBox(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: uiUxDesignService,
          ),
        ),
        sizedBox20(),
        AppText(text: AppConstants.uiUxNeeds, maxLines: 2, style: FontTypography.white16Opacity08Bold),
        sizedBox10(),
        AppText(
          text: AppConstants.uiUxNeedsSubStr1,
          style: FontTypography.fontStyle12WhiteMed,
          textAlign: TextAlign.justify,
        ),
        sizedBox10(),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            children: [
              TextSpan(text: AppConstants.uiUxTitle2, style: FontTypography.fontStyle12WhiteSemi),
              TextSpan(
                text: AppConstants.uiUxNeedsSubStr2,
                style: FontTypography.fontStyle12WhiteMed,
              ),
            ],
          ),
        ),
        sizedBox10(),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            children: [
              TextSpan(text: AppConstants.uiUxTitle3, style: FontTypography.fontStyle12WhiteSemi),
              TextSpan(
                text: AppConstants.uiUxNeedsSubStr3,
                style: FontTypography.fontStyle12WhiteMed,
              ),
            ],
          ),
        ),
        sizedBox10(),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            children: [
              TextSpan(text: AppConstants.uiUxTitle4, style: FontTypography.fontStyle12WhiteSemi),
              TextSpan(
                text: AppConstants.uiUxNeedsSubStr4,
                style: FontTypography.fontStyle12WhiteMed,
              ),
            ],
          ),
        ),
        sizedBox20(),
        Stack(
          children: [
            Image.asset(ImageConstants.uiUxDetailsContent),
            Positioned(
              top: 8,
              left: 30,
              right: 30,
              child: Align(
                alignment: Alignment.center,
                child: AppText(
                  text: AppConstants.uxDesignProcess,
                  maxLines: 2,
                  style: FontTypography.white16Opacity08Bold,
                ),
              ),
            ),
            Positioned(
              top: 25,
              left: 30,
              right: 30,
              child: Align(
                alignment: Alignment.center,
                child: AppText(
                  text: AppConstants.uxDesignProcessSubString,
                  maxLines: 2,
                  style: FontTypography.fontStyle10WhiteMed.copyWith(fontSize: 8.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        sizedBox20(),
      ],
    ),
  );
}

Widget qaTesting(BuildContext context, bool isDark) {
  ///Innovative qa testing staggered grid
  List<StaggeredGridTile> innovativeQATesting = [
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.95,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.manualTesting,
          title: AppConstants.manualTesting,
          subText: AppConstants.manualTestingSubStr),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.automationTesting,
          title: AppConstants.automationTesting,
          subText: AppConstants.automationTestingSubStr),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.usabilityQATesting,
          title: AppConstants.usabilityTesting,
          subText: AppConstants.qaUsabilityTestingSubStr),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.performanceTesting,
          title: AppConstants.performanceTesting,
          subText: AppConstants.performanceTestingSubStr),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.regressionTesting,
          title: AppConstants.regressionTesting,
          subText: AppConstants.regressionTestingSubStr),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.95,
      child: BackGroundTile(
          isDark: isDark,
          iconImagePath: ImageConstants.abTesting,
          title: AppConstants.abTesting,
          subText: AppConstants.abTestingSubStr),
    ),
  ];

  List<Map<String, String>> testingMethodologyData = [
    {
      'iconImagePath': ImageConstants.testDesign,
      'title': AppConstants.testDesign,
      'subText': AppConstants.testDesignSubStr,
    },
    {
      'iconImagePath': ImageConstants.understandingRequirements,
      'title': AppConstants.understandingRequirements,
      'subText': AppConstants.understandingRequirementsSubStr,
    },
    {
      'iconImagePath': ImageConstants.testExecutions,
      'title': AppConstants.testExecutions,
      'subText': AppConstants.testExecutionsSubStr,
    },
    {
      'iconImagePath': ImageConstants.reportingTracking,
      'title': AppConstants.reportingTracking,
      'subText': AppConstants.reportingTrackingSubStr,
    },
    {
      'iconImagePath': ImageConstants.testClosure,
      'title': AppConstants.testClosure,
      'subText': AppConstants.testClosureSubStr,
    },
    {
      'iconImagePath': ImageConstants.continuesImprovement,
      'title': AppConstants.continuesImprovement,
      'subText': AppConstants.continuesQAImprovementSubStr,
    },
  ];

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBox20(),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child:
                  AppText(text: AppConstants.qaTestingService, maxLines: 2, style: FontTypography.white16Opacity08Bold),
            ),
            sizedBox10(),
            AppText(
                text: AppConstants.qaTestingServiceSubStr,
                style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed),
            sizedBox20(),
            SizedBox(
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: innovativeQATesting,
              ),
            ),
            sizedBox20(),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: AppText(
                text: AppConstants.qaTestingMethodologies,
                maxLines: 2,
                style: FontTypography.white16Opacity08Bold,
              ),
            ),
            sizedBox10(),
            AppText(text: AppConstants.qaTestingMethodologiesSubStr, style: FontTypography.fontStyle12WhiteMed),
            sizedBox20(),
          ],
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: testingMethodologyData.length,
        itemBuilder: (context, index) {
          bool isOdd = index % 2 == 0;
          return Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    isOdd
                        ? CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.3),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: isDark
                                  ? AppColors.appSecondaryColor.withValues(alpha:0.3)
                                  : AppColors.whiteColor.withValues(alpha:0.5),
                              child: SvgPicture.asset(
                                testingMethodologyData[index]['iconImagePath'] ?? '',
                                width: 25,
                                height: 25,
                              ),
                            ),
                          )
                        : SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: testingMethodologyData[index]['title'] ?? '',
                                  style: FontTypography.fontStyle12WhiteSemi,
                                ),
                                AppText(
                                  text: testingMethodologyData[index]['subText'] ?? '',
                                  style: FontTypography.fontStyle10WhiteReg,
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
                                  text: testingMethodologyData[index]['title'] ?? '',
                                  style: FontTypography.fontStyle12WhiteSemi,
                                ),
                                AppText(
                                  text: testingMethodologyData[index]['subText'] ?? '',
                                  style: FontTypography.fontStyle10WhiteReg,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 10,
                                ),
                              ],
                            ),
                          )
                        : CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.3),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: isDark
                                  ? AppColors.appSecondaryColor.withValues(alpha:0.3)
                                  : AppColors.whiteColor.withValues(alpha:0.5),
                              child: SvgPicture.asset(
                                testingMethodologyData[index]['iconImagePath'] ?? '',
                                width: 25,
                                height: 25,
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
      sizedBox20(),
    ],
  );
}

Widget aiMl(BuildContext context, bool isDark) {
  ///Ai ml service staggered grid
  List<StaggeredGridTile> aiMlService = [
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.95,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.aiStrategy,
        title: AppConstants.aiStrategyConsulting,
        subText: AppConstants.aiStrategyConsultingSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.mlMd,
        title: AppConstants.mlModelDevelopment,
        subText: AppConstants.mlModelDevelopmentSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.nlp,
        title: AppConstants.nlp,
        subText: AppConstants.nlpSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.aiPoweredAuto,
        title: AppConstants.aiPoweredAuto,
        subText: AppConstants.aiPoweredAutoSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.predictiveAnalytics,
        title: AppConstants.predictiveAnalytics,
        subText: AppConstants.predictiveAnalyticsSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.aiEnhancedApp,
        title: AppConstants.aiEnhancedApp,
        subText: AppConstants.aiEnhancedAppSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.customAiDev,
        title: AppConstants.customAiDev,
        subText: AppConstants.customAiDevSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.95,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.aiMonitorMaintenance,
        title: AppConstants.aiModelMonitorMaintenance,
        subText: AppConstants.aiModelMonitorMaintenanceSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.outplacementServices,
        title: AppConstants.outplacementService,
        subText: AppConstants.outplacementServiceSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
  ];

  ///ai ml methodology
  List<StaggeredGridTile> aiMlMethodology = [
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.understandingRequirements,
        title: AppConstants.understandingRequirements,
        subText: AppConstants.understandingAIMLReqSubStr,
        color: AppColors.appPrimaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteMed,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.dataCollectionPrep,
        title: AppConstants.dataCollectionPreparation,
        subText: AppConstants.dataCollectionPreparationSubStr,
        color: AppColors.appPrimaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteMed,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.modelDev,
        title: AppConstants.modelDevelopment,
        subText: AppConstants.modelDevelopmentSubStr,
        color: AppColors.appPrimaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteMed,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.modelEvaluation,
        title: AppConstants.modelEvaluation,
        subText: AppConstants.modelEvaluationSubStr,
        color: AppColors.appPrimaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteMed,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.deployment,
        title: AppConstants.deployment,
        subText: AppConstants.deploymentSubStr,
        color: AppColors.appPrimaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteMed,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.monitoringMaintenance,
        title: AppConstants.monitoringMaintenance,
        subText: AppConstants.monitoringMaintenanceSubStr,
        color: AppColors.appPrimaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteMed,
      ),
    ),
  ];
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBox20(),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.3,
          child: AppText(text: AppConstants.innovativeAIMl, maxLines: 3, style: FontTypography.white16Opacity08Bold),
        ),
        sizedBox10(),
        AppText(
            text: AppConstants.innovativeAIMlSubStr,
            style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed),
        sizedBox20(),
        SizedBox(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: aiMlService,
          ),
        ),
        sizedBox20(),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: AppText(
            text: AppConstants.ourProvenAiMl,
            maxLines: 3,
            style: FontTypography.white16Opacity08Bold,
          ),
        ),
        sizedBox10(),
        AppText(
          text: AppConstants.ourProvenAiMlSubStr,
          style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed,
        ),
        sizedBox10(),
        SvgPicture.asset(ImageConstants.softwareDevProcess, fit: BoxFit.fill, height: 350),
        sizedBox20(),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: AppText(
            text: AppConstants.aiMlMethodologies,
            maxLines: 3,
            style: FontTypography.white16Opacity08Bold,
          ),
        ),
        sizedBox10(),
        AppText(
          text: AppConstants.aiMlMethodologiesSubStr,
          style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed,
        ),
        sizedBox20(),
        SizedBox(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: aiMlMethodology,
          ),
        ),
        sizedBox20(),
      ],
    ),
  );
}

Widget webDevelopment(BuildContext context, bool isDark) {
  List<StaggeredGridTile> challengesWebAppDev = [
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.85,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.slowAndChunky,
        title: AppConstants.slowAndClunky,
        subText: AppConstants.slowAndClunkySubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.95,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.limitedControlOver,
        title: AppConstants.ltdControlOverBackend,
        subText: AppConstants.ltdControlOverBackendSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.95,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.securityVulnerabilites,
        title: AppConstants.securityVulnerabilities,
        subText: AppConstants.securityVulnerabilitiesSubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 0.85,
      child: BackGroundTile(
        isDark: isDark,
        iconImagePath: ImageConstants.crossBrowserComp,
        title: AppConstants.crossBrowserCompatibility,
        subText: AppConstants.crossBrowserCompatibilitySubStr,
        color: AppColors.appSecondaryColor.withValues(alpha:0.3),
        titleTextStyle: FontTypography.fontStyle12WhiteSemi,
      ),
    ),
  ];

  List<StaggeredGridTile> cardTileAcrossDiverse = [
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.healthCareServiceAcross,
        title: AppConstants.healthCare,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.hrmsServiceAcross,
        title: AppConstants.hrms,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.edTechServiceAcross,
        title: AppConstants.edTech,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.saasServiceAcross,
        title: AppConstants.saas,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.erpServiceAcross,
        title: AppConstants.erp,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.crmServiceAcross,
        title: AppConstants.crm,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container()),
    StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: BackGroundTilePrimary(
        iconImagePath: ImageConstants.aiServiceAcross,
        title: AppConstants.ai,
        isDark: isDark,
      ),
    ),
    StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container()),
  ];

  return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBox20(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            child: AppText(
                text: AppConstants.webAppDevelopmentTitle, maxLines: 3, style: FontTypography.white16Opacity08Bold),
          ),
          sizedBox10(),
          AppText(
              text: AppConstants.webAppDevelopmentSubStr,
              style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed),
          sizedBox20(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: AppText(
              text: AppConstants.challengesOfWebApp,
              maxLines: 3,
              style: FontTypography.white16Opacity08Bold,
            ),
          ),
          sizedBox10(),
          AppText(
            text: AppConstants.challengesOfWebAppSubStr,
            style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed,
          ),
          sizedBox20(),
          SizedBox(
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: challengesWebAppDev,
            ),
          ),
          sizedBox20(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: AppText(
              text: AppConstants.ourStrategicWebAppDevApproach,
              maxLines: 3,
              style: FontTypography.white16Opacity08Bold,
            ),
          ),
          sizedBox10(),
          AppText(
            text: AppConstants.ourStrategicWebAppDevApproachSubStr,
            style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed,
          ),
          sizedBox10(),
          SvgPicture.asset(ImageConstants.softwareDevProcess, fit: BoxFit.fill, height: 350),
          sizedBox20(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: AppText(
              text: AppConstants.techWeWorkOn,
              maxLines: 3,
              style: FontTypography.fontStyle16WhiteSemi,
            ),
          ),
          sizedBox10(),
          AppText(
            text: AppConstants.webAppTechStack,
            style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed,
          ),
          SvgPicture.asset(ImageConstants.frontEndTech, fit: BoxFit.contain, height: 280),
          sizedBox20(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            child: AppText(
              text: AppConstants.webAppDevelopmentService,
              maxLines: 3,
              style: FontTypography.fontStyle16WhiteSemi,
            ),
          ),
          sizedBox10(),
          AppText(
            text: AppConstants.webAppDevelopmentServiceSubStr,
            style: isDark ? FontTypography.fontStyle12PrimaryMed : FontTypography.fontStyle12WhiteMed,
          ),
          sizedBox10(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              child: StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: cardTileAcrossDiverse,
              ),
            ),
          ),
          sizedBox50(),
        ],
      ));
}
