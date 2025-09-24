import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';

/// Created by: Jinal Soni
/// Date: 19/03/25
/// Description: [FontTypography]
/// 18 - white , primary , secondary , ternary
/// 16 - white , primary , secondary , ternary
/// 14 - white , primary , secondary , ternary

class FontTypography {
  static TextStyle appBarTitleStyle = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 20.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

////-------->>> White 16 with opacity 0.8 <<<--------
  static TextStyle white16Opacity08Light = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white16Opacity08Reg = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white16Opacity08Med = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white16Opacity08Semi = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white16Opacity08Bold = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> White 16 without opacity <<<--------
  static TextStyle fontStyle16WhiteLight = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16WhiteReg = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16WhiteMed = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16WhiteSemi = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16WhiteBold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 16 without opacity <<<--------

  static TextStyle fontStyle16PrimaryLight = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16PrimaryReg = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16PrimaryMed = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16PrimarySemi = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16PrimaryBold = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 16 with opacity 0.8 <<<--------

  static TextStyle primary16Opacity08Light = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary16Opacity08Reg = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary16Opacity08Med = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary16Opacity08Semi = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary16Opacity08Bold = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 16 without opacity <<<--------

  static TextStyle fontStyle16SecondaryReg = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16SecondaryLight = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16SecondaryMed = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16SecondarySemi = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16SecondaryBold = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 16 with opacity 0.8 <<<--------

  static TextStyle secondary16Opacity08Light = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary16Opacity08Reg = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary16Opacity08Med = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary16Opacity08Bold = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary16Opacity08Semi = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 16 without opacity <<<--------

  static TextStyle fontStyle16TernaryLight = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16TernaryReg = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16TernaryMed = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16TernarySemi = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16TernaryBold = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 16 with opacity 0.8<<<--------

  static TextStyle ternary16Opacity08Reg = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary16Opacity08Med = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary16Opacity08Light = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary16Opacity08Semi = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary16Opacity08Bold = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> White 14 without opacity <<<--------
  ///Default text style white with 14 font size light
  static TextStyle defaultTextStyle = TextStyle(
    fontSize: 14.0,
    color: AppColors.whiteColor,
    fontStyle: FontStyle.normal,
    fontFamily: AppConstants.lightFontFamily,
  );

  static TextStyle fontStyle14WhiteReg = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14WhiteMed = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14WhiteSemi = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14WhiteBold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> White 14 with opacity 0.8 <<<--------
  static TextStyle white14Opacity08Light = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white14Opacity08Reg = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white14Opacity08Med = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white14Opacity08Semi = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white14Opacity08Bold = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 14 without opacity <<<--------

  static TextStyle fontStyle14PrimaryLight = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14PrimaryReg = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14PrimaryMed = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14PrimarySemi = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14PrimaryBold = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 14 with opacity 0.8 <<<--------

  static TextStyle primary14Opacity08Light = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary14Opacity08Reg = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary14Opacity08Med = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary14Opacity08Semi = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary14Opacity08Bold = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 14 without opacity <<<--------

  static TextStyle fontStyle14SecondaryReg = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14SecondaryLight = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14SecondaryMed = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14SecondarySemi = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14SecondaryBold = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 14 with opacity 0.8 <<<--------

  static TextStyle secondary14Opacity08Light = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary14Opacity08Reg = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary14Opacity08Med = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary14Opacity08Bold = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary14Opacity08Semi = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 14 without opacity <<<--------

  static TextStyle fontStyle14TernaryLight = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14TernaryReg = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14TernaryMed = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14TernarySemi = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14TernaryBold = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 14 with opacity 0.8<<<--------

  static TextStyle ternary14Opacity08Reg = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary14Opacity08Med = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary14Opacity08Light = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary14Opacity08Semi = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary14Opacity08Bold = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> White 12 with opacity 0.8 <<<--------
  static TextStyle white12Opacity08Light = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white12Opacity08Reg = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white12Opacity08Med = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white12Opacity08Semi = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white12Opacity08Bold = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> White 12 without opacity <<<--------
  static TextStyle fontStyle12WhiteLight = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12WhiteReg = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12WhiteMed = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12WhiteSemi = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12WhiteBold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 12 without opacity <<<--------

  static TextStyle fontStyle12PrimaryLight = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12PrimaryReg = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12PrimaryMed = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12PrimarySemi = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12PrimaryBold = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 16 with opacity 0.8 <<<--------

  static TextStyle primary12Opacity08Light = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary12Opacity08Reg = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary12Opacity08Med = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary12Opacity08Semi = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary12Opacity08Bold = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 12 without opacity <<<--------

  static TextStyle fontStyle12SecondaryReg = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12SecondaryLight = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12SecondaryMed = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12SecondarySemi = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12SecondaryBold = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 12 with opacity 0.8 <<<--------

  static TextStyle secondary12Opacity08Light = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary12Opacity08Reg = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary12Opacity08Med = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary12Opacity08Bold = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary12Opacity08Semi = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 12 without opacity <<<--------

  static TextStyle fontStyle12TernaryLight = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12TernaryReg = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12TernaryMed = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12TernarySemi = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12TernaryBold = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 12 with opacity 0.8<<<--------

  static TextStyle ternary12Opacity08Reg = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary12Opacity08Med = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary12Opacity08Light = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary12Opacity08Semi = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary12Opacity08Bold = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

////-------->>> White 18 with opacity 0.8 <<<--------
  static TextStyle white18Opacity08Light = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white18Opacity08Reg = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white18Opacity08Med = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white18Opacity08Semi = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white18Opacity08Bold = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> White 18 without opacity <<<--------
  static TextStyle fontStyle18WhiteLight = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18WhiteReg = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18WhiteMed = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18WhiteSemi = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18WhiteBold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 18 without opacity <<<--------

  static TextStyle fontStyle18PrimaryLight = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18PrimaryReg = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18PrimaryMed = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18PrimarySemi = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18PrimaryBold = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 18 with opacity 0.8 <<<--------

  static TextStyle primary18Opacity08Light = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary18Opacity08Reg = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary18Opacity08Med = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary18Opacity08Semi = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary18Opacity08Bold = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 18 without opacity <<<--------

  static TextStyle fontStyle18SecondaryReg = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18SecondaryLight = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18SecondaryMed = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18SecondarySemi = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18SecondaryBold = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 186 with opacity 0.8 <<<--------

  static TextStyle secondary18Opacity08Light = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary186Opacity08Reg = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary18Opacity08Med = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary186Opacity08Bold = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary18Opacity08Semi = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 18 without opacity <<<--------

  static TextStyle fontStyle18TernaryLight = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18TernaryReg = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18TernaryMed = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18TernarySemi = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle18TernaryBold = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 18.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 18 with opacity 0.8<<<--------

  static TextStyle ternary18Opacity08Reg = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary18Opacity08Med = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary18Opacity08Light = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary18Opacity08Semi = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary18Opacity08Bold = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 18.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

//// -- - - - - -
////-------->>> White 10 with opacity 0.8 <<<--------
  static TextStyle white10Opacity08Light = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white10Opacity08Reg = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white10Opacity08Med = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white10Opacity08Semi = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle white10Opacity08Bold = TextStyle(
    color: AppColors.whiteColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> White 10 without opacity <<<--------
  static TextStyle fontStyle10WhiteLight = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10WhiteReg = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10WhiteMed = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10WhiteSemi = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10WhiteBold = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 10 without opacity <<<--------

  static TextStyle fontStyle10PrimaryLight = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10PrimaryReg = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10PrimaryMed = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10PrimarySemi = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10PrimaryBold = TextStyle(
    color: AppColors.appPrimaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Primary 10 with opacity 0.8 <<<--------

  static TextStyle primary10Opacity08Light = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary10Opacity08Reg = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary10Opacity08Med = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary10Opacity08Semi = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle primary10Opacity08Bold = TextStyle(
    color: AppColors.appPrimaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 10 without opacity <<<--------

  static TextStyle fontStyle10SecondaryReg = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10SecondaryLight = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10SecondaryMed = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10SecondarySemi = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10SecondaryBold = TextStyle(
    color: AppColors.appSecondaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Secondary 10 with opacity 0.8 <<<--------

  static TextStyle secondary10Opacity08Light = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary10Opacity08Reg = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary10Opacity08Med = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary10Opacity08Bold = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle secondary10Opacity08Semi = TextStyle(
    color: AppColors.appSecondaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 10 without opacity <<<--------

  static TextStyle fontStyle10TernaryLight = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10TernaryReg = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10TernaryMed = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10TernarySemi = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10TernaryBold = TextStyle(
    color: AppColors.appTernaryColor,
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Ternary 10 with opacity 0.8<<<--------

  static TextStyle ternary10Opacity08Reg = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary10Opacity08Med = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary10Opacity08Light = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary10Opacity08Semi = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle ternary10Opacity08Bold = TextStyle(
    color: AppColors.appTernaryColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );


  ////-------->>> Black 14 without opacity <<<--------

  static TextStyle fontStyle14BlackLight = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14BlackReg = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14BlackMed = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14BlackSemi = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle14BlackBold = TextStyle(
    color: AppColors.blackColor,
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Black 14 with opacity 0.8 <<<--------

  static TextStyle black14Opacity08Light = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black14Opacity08Reg = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black14Opacity08Med = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black14Opacity08Semi = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black14Opacity08Bold = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 14.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );


  ////-------->>> Black 16 without opacity <<<--------

  static TextStyle fontStyle16BlackLight = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16BlackReg = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16BlackMed = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16BlackSemi = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle16BlackBold = TextStyle(
    color: AppColors.blackColor,
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Black 16 with opacity 0.8 <<<--------

  static TextStyle black16Opacity08Light = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black16Opacity08Reg = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black16Opacity08Med = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black16Opacity08Semi = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black16Opacity08Bold = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 16.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );


  ////-------->>> Black 12 without opacity <<<--------

  static TextStyle fontStyle12BlackLight = TextStyle(
    color: AppColors.blackColor,
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12BlackReg = TextStyle(
    color: AppColors.blackColor,
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12BlackMed = TextStyle(
    color: AppColors.blackColor,
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12BlackSemi = TextStyle(
    color: AppColors.blackColor,
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle12BlackBold = TextStyle(
    color: AppColors.blackColor,
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Black 12 with opacity 0.8 <<<--------

  static TextStyle black12Opacity08Light = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black12Opacity08Reg = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black12Opacity08Med = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black12Opacity08Semi = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black12Opacity08Bold = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 12.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );


  ////-------->>> Black 10 without opacity <<<--------

  static TextStyle fontStyle10BlackLight = TextStyle(
    color: AppColors.blackColor,
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10BlackReg = TextStyle(
    color: AppColors.blackColor,
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10BlackMed = TextStyle(
    color: AppColors.blackColor,
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10BlackSemi = TextStyle(
    color: AppColors.blackColor,
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle fontStyle10BlackBold = TextStyle(
    color: AppColors.blackColor,
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );

  ////-------->>> Black 10 with opacity 0.8 <<<--------

  static TextStyle black10Opacity08Light = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.lightFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black10Opacity08Reg = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.regularFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black10Opacity08Med = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.mediumFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black10Opacity08Semi = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.semiBoldFontFamily,
    fontStyle: FontStyle.normal,
  );

  static TextStyle black10Opacity08Bold = TextStyle(
    color: AppColors.blackColor.withValues(alpha:0.9),
    fontSize: 10.0,
    fontFamily: AppConstants.boldFontFamily,
    fontStyle: FontStyle.normal,
  );
}



