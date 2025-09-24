import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/home_page/service_details_second_part.dart';
import 'package:reyna_solution_app/src/presentation/style/font/font_typography.dart';
import 'package:reyna_solution_app/src/presentation/widgets/widgets_exports.dart';
import 'package:reyna_solution_app/src/utils/utils_export.dart';

/// Created by: Jinal Soni
/// Date: 19/03/25
/// Description: [ServiceDetails]

class ServiceDetails extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;
  final bool isDark;

  const ServiceDetails({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.isDark,
  });

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> with TickerProviderStateMixin {
  ///For image animation
  late AnimationController _imageAnimationController;
  late Animation<Offset> _slideImageAnimation;

  ///For content animation
  late AnimationController _contentAnimationController;
  late Animation<Offset> _slideContentAnimation;

  int _selectedIndex = -1; // -1 means no selection

  @override
  void initState() {
    super.initState();

    ///For image transition
    _imageAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    _slideImageAnimation = Tween<Offset>(begin: const Offset(1.5, 0), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: _imageAnimationController, curve: Curves.easeOut));
    _imageAnimationController.forward();

    ///For content transition
    _contentAnimationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1500));
    _slideContentAnimation = Tween<Offset>(begin: const Offset(0, 1.5), end: const Offset(0, 0))
        .animate(CurvedAnimation(parent: _contentAnimationController, curve: Curves.easeOut));
    _contentAnimationController.forward();
  }

  @override
  void dispose() {
    _imageAnimationController.dispose();
    _contentAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.appPrimaryColor.withValues(alpha:0.2),
            AppColors.appSecondaryColor.withValues(alpha:0.15),
            AppColors.appTernaryColor.withValues(alpha:0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: widget.isDark ? AppColors.transparentColor : AppColors.whiteColor,
        appBar: MyAppBar(
          isDark: widget.isDark,
          title: '',
          centerTitle: false,
          isIcon: true,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SlideTransition(
                  position: _slideImageAnimation,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(150)),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Opacity(
                            opacity: 0.9,
                            //     widget.isDark ? const AlwaysStoppedAnimation(.4) : const AlwaysStoppedAnimation(.8),
                            child: Image.asset(
                              widget.image,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10.0,
                        bottom: 5.0,
                        child: AppText(
                          text: widget.title,
                          style: FontTypography.white18Opacity08Semi.copyWith(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBox30(),
                SlideTransition(
                  position: _slideContentAnimation,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(150)),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.appPrimaryColor.withValues(alpha:widget.isDark ? 0.3 : 0.9),
                              // AppColors.appSecondaryColor.withOpacity(widget.isDark ? 0.2 : 0.8),
                              AppColors.appTernaryColor.withValues(alpha:widget.isDark ? 0.2 : 0.5),
                              AppColors.appTernaryColor.withValues(alpha:widget.isDark ? 0.1 : 0.6),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: details(context, type: widget.title),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget details(BuildContext context, {required String type}) {
    switch (type) {
      case AppConstants.softwareDevelopment:
        return softwareDevDetails(context);
      case AppConstants.mobileDevelopment:
        return mobileDetails(context, widget.isDark);
      case AppConstants.uiUxServices:
        return uiUxDetails(context, widget.isDark);
      case AppConstants.qaTesting:
        return qaTesting(context, widget.isDark);
      case AppConstants.aiMl:
        return aiMl(context, widget.isDark);
      case AppConstants.webDevelopment:
        return webDevelopment(context, widget.isDark);
      default:
        return Container();
    }
  }

  Widget softwareDevDetails(BuildContext context) {
    ///Software dev staggered grid of innovative sd service
    List<StaggeredGridTile> cardTileInnovativeSoftDev = [
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1.1,
        child: BackGroundTile(
          isDark: widget.isDark,
          iconImagePath: ImageConstants.customSoftwareDev,
          title: AppConstants.customSoftwareDev,
          subText: AppConstants.customSoftwareDevSubString,
          titleTextStyle: FontTypography.fontStyle12WhiteSemi,
        ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1.1,
        child: BackGroundTile(
          isDark: widget.isDark,
          iconImagePath: ImageConstants.enterpriseSoftwareDev,
          title: AppConstants.enterpriseSoftwareDev,
          subText: AppConstants.enterpriseSoftwareDevSubString,
          titleTextStyle: FontTypography.fontStyle12WhiteSemi,
        ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1.1,
        child: BackGroundTile(
          isDark: widget.isDark,
          iconImagePath: ImageConstants.softwareProductDev,
          title: AppConstants.softwareProdDev,
          subText: AppConstants.softwareProdDevSubString,
          titleTextStyle: FontTypography.fontStyle12WhiteSemi,
        ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1.1,
        child: BackGroundTile(
          isDark: widget.isDark,
          iconImagePath: ImageConstants.softwareArchitecture,
          title: AppConstants.softwareArch,
          subText: AppConstants.softwareArchSubString,
          titleTextStyle: FontTypography.fontStyle12WhiteSemi,
        ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1.1,
        child: BackGroundTile(
          isDark: widget.isDark,
          iconImagePath: ImageConstants.softwareIntegrationService,
          title: AppConstants.softwareIntegrationService,
          subText: AppConstants.softwareIntegrationServiceSubString,
          titleTextStyle: FontTypography.fontStyle12WhiteSemi,
        ),
      ),
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1.1,
        child: BackGroundTile(
          isDark: widget.isDark,
          iconImagePath: ImageConstants.softwareReengineering,
          title: AppConstants.softwareReEng,
          subText: AppConstants.softwareReEngSubString,
          titleTextStyle: FontTypography.fontStyle12WhiteSemi,
        ),
      ),
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.35,
                child: AppText(
                  text: AppConstants.innovativeSoftware,
                  style: FontTypography.white16Opacity08Bold,
                ),
              ),
              sizedBox20(),
              AppText(
                text: AppConstants.innovativeSoftwareSubString,
                style: !widget.isDark ? FontTypography.fontStyle12WhiteMed : FontTypography.fontStyle12PrimaryMed,
              ),
              sizedBox10(),
              SizedBox(
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  children: cardTileInnovativeSoftDev,
                ),
              ),
              sizedBox20(),
              Stack(
                children: [
                  SvgPicture.asset(ImageConstants.frontendTechSvg),
                  AppText(text: AppConstants.techWeWorkOn, style: FontTypography.fontStyle18WhiteSemi),
                  Positioned(
                    top: 20,
                    child: AppText(
                      text: AppConstants.frontEnd,
                      style: FontTypography.fontStyle18WhiteSemi,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0.0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: AppText(
                        text: AppConstants.frontEndSubString,
                        style: FontTypography.fontStyle10WhiteSemi,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 330,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: AppText(
                        text: AppConstants.ourProvenSoftDebProcess,
                        style: FontTypography.fontStyle18WhiteSemi,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: AppText(
                  text: AppConstants.ourProvenSoftDebProcessSubString,
                  style: FontTypography.fontStyle10WhiteMed,
                ),
              ),
              sizedBox20(),
              SvgPicture.asset(ImageConstants.softwareDevProcess, fit: BoxFit.fill, height: 350),
              sizedBox20(),
              AppText(text: AppConstants.ourDevMethodologies, style: FontTypography.fontStyle18WhiteSemi),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1,
                child: AppText(
                  text: AppConstants.ourDevMethodologiesSubString,
                  style: FontTypography.fontStyle10WhiteSemi,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              sizedBox20(),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(ourDevMethodologiesSD.length, (index) {
                    bool isSelected = _selectedIndex == index;

                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            setState(() {
                              _selectedIndex = isSelected ? -1 : index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            height: isSelected ? 240 : 220,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    colors: isSelected
                                        ? [
                                            AppColors.appPrimaryColor.withValues(alpha:widget.isDark ? 0.7 : 0.6),
                                            AppColors.appPrimaryColor.withValues(alpha:widget.isDark ? 0.5 : 0.4),
                                            AppColors.appPrimaryColor.withValues(alpha:widget.isDark ? 0.3 : 0.2),
                                          ]
                                        : [
                                            AppColors.appPrimaryColor.withValues(alpha:widget.isDark ? 0.4 : 0.4),
                                            AppColors.appSecondaryColor.withValues(alpha:widget.isDark ? 0.4 : 0.5),
                                            AppColors.appTernaryColor.withValues(alpha:widget.isDark ? 0.4 : 1),
                                          ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight)),
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: widget.isDark
                                          ? AppColors.appSecondaryColor.withValues(alpha:0.3)
                                          : AppColors.whiteColor.withValues(alpha:0.7),
                                      child: SvgPicture.asset(
                                        ourDevMethodologiesSD[index][AppConstants.iconName]!,
                                        height: 22.0,
                                        width: 22.0,
                                      ),
                                    ),
                                    Flexible(
                                      child: SizedBox(
                                        width: 200,
                                        child: AppText(
                                          textAlign: TextAlign.right,
                                          text: ourDevMethodologiesSD[index][AppConstants.title]!,
                                          style: isSelected == true
                                              ? FontTypography.fontStyle16WhiteSemi
                                              : FontTypography.fontStyle14WhiteSemi,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                sizedBox10(),
                                AppText(
                                  text: ourDevMethodologiesSD[index][AppConstants.subTitle]!,
                                  style: isSelected == true
                                      ? FontTypography.fontStyle12WhiteSemi
                                      : FontTypography.fontStyle12WhiteReg,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        sizedBox15()
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        sizedBox50(),
      ],
    );
  }
}
