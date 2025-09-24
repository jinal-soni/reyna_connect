import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/utils/utils_export.dart';

class AppColors {
  static final AppColors instance = AppColors._internal();

  factory AppColors() => instance;

  AppColors._internal();

  static Color appPrimaryColor = HexColor('#05D9E3');
  static Color appPrimaryColor2 = HexColor('#a2f9fd');
  static Color appSecondaryColor = HexColor('#33E9A1');
  static Color transparentColor = HexColor('#00FFFFFF');
  static Color appTernaryColor = HexColor('#0543E3');
  static Color appTernaryColor2 = HexColor('#03287E');
  static Color whiteColor = HexColor('#FFFFFF');
  static Color blackColor = HexColor('#000000');
  static Color appBarColor = HexColor('');
}
