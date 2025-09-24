import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';

/// Created by: Jinal Soni
/// Date: 19/03/25
/// Description: []

class MyBottomNavigationBar extends StatelessWidget {
  final NotchBottomBarController notchController;
  final bool isDark;
  final void Function(int) onTap;

  const MyBottomNavigationBar({
    super.key,
    required this.notchController,
    required this.onTap,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: notchController,
      color: isDark ? AppColors.appPrimaryColor.withValues(alpha:0.2) : AppColors.appPrimaryColor.withValues(alpha:0.8),
      showLabel: false,
      textOverflow: TextOverflow.visible,
      maxLine: 1,
      shadowElevation: 5,
      kBottomRadius: 0,
      notchGradient: LinearGradient(
        colors: isDark ? [
          AppColors.appPrimaryColor.withValues(alpha:0.8),
          AppColors.appSecondaryColor.withValues(alpha:0.6),
          AppColors.appTernaryColor.withValues(alpha:0.4),
        ] : [
          AppColors.appTernaryColor.withValues(alpha:0.4),
          AppColors.appSecondaryColor.withValues(alpha:0.6),
          AppColors.appPrimaryColor.withValues(alpha:0.8),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      removeMargins: true,
      bottomBarWidth: MediaQuery.of(context).size.width,
      showShadow: true,
      durationInMilliSeconds: 300,
      itemLabelStyle: TextStyle(fontSize: 10, color: AppColors.appSecondaryColor),
      elevation: 1,
      bottomBarItems: [
        BottomBarItem(
          inActiveItem: Image.asset(
            ImageConstants.blogInActive,
            height: 24,
            width: 24,
            color: isDark ? AppColors.appPrimaryColor : AppColors.whiteColor,
          ),
          activeItem: Image.asset(
            ImageConstants.blogActive,
            height: 24,
            width: 24,
            color: isDark ? AppColors.appSecondaryColor : AppColors.whiteColor,
          ),
        ),
        BottomBarItem(
          inActiveItem: Image.asset(
            ImageConstants.homeInActive,
            height: 24,
            width: 24,
            color: isDark ? AppColors.appPrimaryColor : AppColors.whiteColor,
          ),
          activeItem: Image.asset(
            ImageConstants.homeActive,
            height: 24,
            width: 24,
            color: isDark ? AppColors.appSecondaryColor : AppColors.whiteColor,
          ),
        ),
        BottomBarItem(
          inActiveItem: Image.asset(
            ImageConstants.companyInActive,
            height: 24,
            width: 24,
            color: isDark ? AppColors.appPrimaryColor : AppColors.whiteColor,
          ),
          activeItem: Image.asset(
            ImageConstants.companyActive,
            height: 24,
            width: 24,
            color: isDark ? AppColors.appSecondaryColor : AppColors.whiteColor,
          ),
        ),
      ],
      onTap: onTap,
      kIconSize: 25.0,
    );
  }
}
