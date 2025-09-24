import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/home_page/gallery_view.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/home_page/home_slider_details.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/home_page/service_details_screen.dart';
import 'package:reyna_solution_app/src/presentation/style/font/font_typography.dart';
import 'package:reyna_solution_app/src/presentation/widgets/widgets_exports.dart';

/// Created by: Jinal Soni
/// Date: 19/03/25
/// Description: [Page1Screen]

class Page1Screen extends StatefulWidget {
  final bool isDark;

  const Page1Screen({
    super.key,
    required this.isDark,
  });

  @override
  State<Page1Screen> createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<Page1Screen> {
  int _currentIndex = 0;
  List<Map<String, String>> techImageWeServe = [];
  final List<String> imageUrls = [
    'https://fastly.picsum.photos/id/90/200/300.jpg?hmac=yKaRyhG3EFez3DuYnuPdh29pSCXLc8DDXROYdKQQp30', // replace with your image URLs or assets
    'https://fastly.picsum.photos/id/391/200/200.jpg?hmac=eWWXf2lLHPoO-zrpo97Q3ViRD7KFeO4CborOD3CC4AU',
    'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
    'https://fastly.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68',
    'https://fastly.picsum.photos/id/13/2500/1667.jpg?hmac=SoX9UoHhN8HyklRA4A3vcCWJMVtiBXUg0W4ljWTor7s'
  ];

  BorderRadius getBorderRadius(int index) {
    switch (index % 6) {
      case 0:
        return const BorderRadius.only(bottomRight: Radius.circular(80));
      case 1:
        return const BorderRadius.only(
            bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80));
      case 2:
        return const BorderRadius.only(bottomLeft: Radius.circular(80));
      case 3:
        return const BorderRadius.only(
            bottomRight: Radius.circular(80), bottomLeft: Radius.circular(80));
      case 4:
        return const BorderRadius.only(bottomRight: Radius.circular(80));
      case 5:
        return const BorderRadius.only(bottomLeft: Radius.circular(80));
      default:
        return const BorderRadius.only(
            bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80));
    }
  }

  @override
  Widget build(BuildContext context) {
    techImageWeServe = widget.isDark ? techImageWhite : techImageBlack;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          sizedBox10(),
          // MaterialButton(
          //   onPressed: () async {
          //     print('1 ---- -- - - >');
          //     await saveAssetPdfToDownloads(context ,'asset/casestudy_pdf/dummy.pdf', 'dummy.pdf');
          //   },
          //   child: Text("Download Case Study"),
          // ),
          // sizedBox10(),
          Material(
            elevation: 8.0,
            borderRadius: getBorderRadius(_currentIndex),
            color: AppColors.transparentColor,
            // color: widget.isDark ? AppColors.transparentColor : AppColors.appPrimaryColor.withOpacity(0.1),
            shadowColor: widget.isDark
                ? AppColors.appPrimaryColor.withValues(alpha: 0.2)
                : AppColors.appPrimaryColor.withValues(alpha: 0.0),
            child: ClipRRect(
              borderRadius: getBorderRadius(_currentIndex),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15.0, bottom: 30.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.appPrimaryColor.withValues(alpha: 0.1),
                      AppColors.transparentColor,
                      AppColors.transparentColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 8.0),
                      child: AppText(
                        text: AppConstants.homePageSliderTitle,
                        style: !widget.isDark
                            ? FontTypography.fontStyle16WhiteMed
                                .copyWith(color: AppColors.blackColor)
                            : FontTypography.fontStyle16WhiteMed,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    sizedBox10(),
                    CarouselSlider(
                      options: CarouselOptions(
                          height: 350,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          }),
                      items: homeScreenCarouselItems.map((item) {
                        return InkWell(
                          onTap:  () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeSliderDetails(
                                        isDark: widget.isDark,
                                        // isMenuOpen: widget.isMenuOpen,
                                        techTitle: '',
                                      ),
                                    ),
                                  );
                                },
                          child: Builder(
                            builder: (BuildContext context) {
                              return Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Opacity(
                                      opacity: 0.85,
                                      child: Image.asset(item["image"]!,
                                          fit: BoxFit.cover, height: 500),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    left: 10.0,
                                    child: AppText(
                                      text: item["title"]!,
                                      style: FontTypography
                                          .secondary14Opacity08Med
                                          .copyWith(fontSize: 18.0),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: AppText(
                                        text: item["subTitle"]!,
                                        textAlign: TextAlign.left,
                                        style: FontTypography
                                            .fontStyle12WhiteMed
                                            .copyWith(
                                          backgroundColor: AppColors
                                              .appPrimaryColor
                                              .withValues(alpha: 0.2),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          sizedBox30(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: AppText(
              text: AppConstants.freeConsultation,
              style: widget.isDark
                  ? FontTypography.primary16Opacity08Med
                  : FontTypography.black16Opacity08Med,
              textAlign: TextAlign.center,
            ),
          ),
          sizedBox20(),
          SizedBox(
            height: 50.0,
            width: 180.0,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  backgroundColor:
                      AppColors.appPrimaryColor.withValues(alpha: 0.6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                child: AppText(
                    text: AppConstants.letsGetToWork,
                    textAlign: TextAlign.center,
                    style: widget.isDark
                        ? FontTypography.white14Opacity08Med
                        : FontTypography.black14Opacity08Med),
                onPressed: () {}),
          ),
          sizedBox30(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: aboutUs(context),
          ),
          sizedBox20(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: AppText(
              text: AppConstants.lifeAtReyna,
              style: widget.isDark
                  ? FontTypography.primary18Opacity08Semi
                      .copyWith(fontSize: 20.0)
                  : FontTypography.black16Opacity08Semi
                      .copyWith(fontSize: 20.0),
            ),
          ),
          sizedBox20(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length + 1, // extra for arrow
                itemBuilder: (context, index) {
                  if (index < imageUrls.length) {
                    return Container(
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.only(right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  } else {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => GalleryView(isDark: widget.isDark,)),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.arrow_forward, size: 40, color: AppColors.appPrimaryColor),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          sizedBox20(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: serviceList.length,
            itemBuilder: (context, index) {
              bool isOdd = index % 2 == 0;
              return GestureDetector(
                onTap: () {
                  HapticFeedback.heavyImpact();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ServiceDetails(
                        isDark: widget.isDark,
                        image: serviceList[index]['image']!,
                        title: serviceList[index]['title']!,
                        subTitle: serviceList[index]['subTitle']!,
                      ),
                    ),
                  );
                },
                child: Container(
                  // height: 200.0,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          isOdd
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: Image.asset(
                                      fit: BoxFit.cover,
                                      serviceList[index]['image'] ?? '',
                                    ),
                                  ),
                                )
                              : SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        text: serviceList[index]['title'] ?? '',
                                        style: Platform.isIOS
                                            ? widget.isDark
                                                ? FontTypography
                                                    .fontStyle16PrimarySemi
                                                : FontTypography
                                                    .fontStyle16BlackSemi
                                            : widget.isDark
                                                ? FontTypography
                                                    .fontStyle14PrimarySemi
                                                : FontTypography
                                                    .fontStyle14BlackSemi,
                                      ),
                                      AppText(
                                        text: serviceList[index]['subTitle'] ??
                                            '',
                                        style:
                                            // Platform.isIOS
                                            //     ? widget.isDark
                                            //         ? FontTypography
                                            //             .fontStyle14PrimaryReg
                                            //         : FontTypography
                                            //             .fontStyle14BlackReg
                                            //     :
                                            widget.isDark
                                                ? FontTypography
                                                    .fontStyle12PrimaryReg
                                                : FontTypography
                                                    .fontStyle12BlackReg,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        text: serviceList[index]['title'] ?? '',
                                        style: Platform.isIOS
                                            ? widget.isDark
                                                ? FontTypography
                                                    .fontStyle16PrimarySemi
                                                : FontTypography
                                                    .fontStyle16BlackSemi
                                            : widget.isDark
                                                ? FontTypography
                                                    .fontStyle14PrimarySemi
                                                : FontTypography
                                                    .fontStyle14BlackSemi,
                                      ),
                                      AppText(
                                        text: serviceList[index]['subTitle'] ??
                                            '',
                                        style:
                                            //  Platform.isIOS
                                            //     ? widget.isDark
                                            //         ? FontTypography
                                            //             .fontStyle14PrimaryReg
                                            //         : FontTypography
                                            //             .fontStyle14BlackReg
                                            //     :
                                            widget.isDark
                                                ? FontTypography
                                                    .fontStyle12PrimaryReg
                                                : FontTypography
                                                    .fontStyle12BlackReg,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 10,
                                      ),
                                    ],
                                  ),
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: Image.asset(
                                      fit: BoxFit.cover,
                                      serviceList[index]['image'] ?? '',
                                    ),
                                  ),
                                ),
                        ],
                      ),
                      sizedBox10(),
                    ],
                  ),
                ),
              );
            },
          ),
          sizedBox20(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: AppText(
                  text: AppConstants.ourTechnoPlat,
                  style: widget.isDark
                      ? FontTypography.primary18Opacity08Semi
                          .copyWith(fontSize: 20.0)
                      : FontTypography.black16Opacity08Semi
                          .copyWith(fontSize: 20.0),
                ),
              ),
              sizedBox5(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: AppText(
                  text: AppConstants.ourTechnoPlatSubString,
                  style: Platform.isIOS
                      ? widget.isDark
                          ? FontTypography.white14Opacity08Reg
                          : FontTypography.black14Opacity08Reg
                      : widget.isDark
                          ? FontTypography.white12Opacity08Reg
                          : FontTypography.black12Opacity08Reg,
                  textAlign: TextAlign.center,
                ),
              ),
              sizedBox10(),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: AppColors.appPrimaryColor.withValues(alpha: 0.4),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: false,
                      viewportFraction: 1,
                    ),
                    items: techImageWeServe.map((item) {
                      return Builder(builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppText(
                                text: item['title']!,
                                style: widget.isDark
                                    ? FontTypography.fontStyle16WhiteMed
                                    : FontTypography.fontStyle16BlackMed,
                              ),
                              sizedBox8(),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  child: Image.asset(
                                    item['image']!,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          sizedBox20(),
          AppText(
            text: AppConstants.workedWith,
            style: widget.isDark
                ? FontTypography.primary18Opacity08Semi.copyWith(fontSize: 20.0)
                : FontTypography.black16Opacity08Semi.copyWith(fontSize: 20.0),
          ),
          sizedBox10(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: 80.0,
              width: MediaQuery.of(context).size.width - 40,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: widget.isDark
                      ? AppColors.whiteColor.withValues(alpha: 0.6)
                      : AppColors.appPrimaryColor.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(50.0)),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: false,
                ),
                items: companiesWeServer.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Center(
                        child: Image.asset(
                          width: 150,
                          item["image"] ?? '',
                          // width: 400,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget aboutUs(BuildContext context) {
    List<StaggeredGridTile> cardAboutOurWork = [
      StaggeredGridTile.count(
        crossAxisCellCount: 1,
        mainAxisCellCount: 1,
        child: BackGroundTileWhite(
          iconImagePath: ImageConstants.totalClient,
          title: AppConstants.totalClients,
          isDark: widget.isDark,
          subTitle: AppConstants.clients,
        ),
      ),
      StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: BackGroundTileWhite(
            iconImagePath: ImageConstants.experienceYears,
            title: AppConstants.totalYearsExperience,
            isDark: widget.isDark,
            subTitle: AppConstants.yearsExperience,
          )),
      StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: BackGroundTileWhite(
            iconImagePath: ImageConstants.experts,
            title: AppConstants.totalExperts,
            isDark: widget.isDark,
            subTitle: AppConstants.experts,
          )),
      StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: BackGroundTileWhite(
            iconImagePath: ImageConstants.totalProjects,
            title: AppConstants.totalProjects,
            isDark: widget.isDark,
            subTitle: AppConstants.projects,
          )),
      StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: BackGroundTileWhite(
            iconImagePath: ImageConstants.onTimeDelivery,
            title: AppConstants.totalOnTimeDelivery,
            isDark: widget.isDark,
            subTitle: AppConstants.onTimeDelivery,
          )),
      StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: BackGroundTileWhite(
            iconImagePath: ImageConstants.industriesServed,
            title: AppConstants.totalIndustriesServed,
            isDark: widget.isDark,
            subTitle: AppConstants.industriesServed,
          )),
      StaggeredGridTile.count(
          crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container()),
      StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: BackGroundTileWhite(
            iconImagePath: ImageConstants.locations,
            title: AppConstants.totalLocations,
            isDark: widget.isDark,
            subTitle: AppConstants.locations,
          )),
      StaggeredGridTile.count(
          crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container()),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          text: AppConstants.aboutUs,
          style: widget.isDark
              ? FontTypography.primary18Opacity08Semi.copyWith(fontSize: 20.0)
              : FontTypography.black16Opacity08Semi.copyWith(fontSize: 20.0),
        ),
        sizedBox10(),
        AppText(
          text: AppConstants.aboutUsSubString,
          style: Platform.isIOS
              ? widget.isDark
                  ? FontTypography.white14Opacity08Reg
                  : FontTypography.black14Opacity08Reg
              : widget.isDark
                  ? FontTypography.white12Opacity08Reg
                  : FontTypography.black12Opacity08Reg,
          textAlign: TextAlign.center,
        ),
        sizedBox20(),
        SizedBox(
          // height: 370,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                bottom: 30,
                top: 30,
                child: Opacity(
                  opacity: widget.isDark ? 1 : 0.5,
                  child: SvgPicture.asset(
                    ImageConstants.mapBackground,
                    width: MediaQuery.of(context).size.width,
                    // height: 370,
                  ),
                ),
              ),
              SizedBox(
                child: StaggeredGrid.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
                  children: cardAboutOurWork,
                ),
              ),
            ],
          ),
        ),
        sizedBox20(),
      ],
    );
  }
}
