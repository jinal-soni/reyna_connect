import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/app_label_text.dart';

/// Created by: Jinal Soni
/// Date: 21/03/25
/// Description: [BackGroundTilePrimary]

class BackGroundTilePrimary extends StatelessWidget {
  final String iconImagePath;
  final String title;
  final bool isDark;

  const BackGroundTilePrimary({
    super.key,
    required this.iconImagePath,
    required this.title,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDark ? AppColors.appPrimaryColor.withValues(alpha:0.4) : AppColors.appPrimaryColor.withValues(alpha:0.6),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor:
                  isDark ? AppColors.appSecondaryColor.withValues(alpha:0.3) : AppColors.whiteColor.withValues(alpha:0.6),
              child: SvgPicture.asset(
                iconImagePath,
                height: 30.0,
                width: 30.0,
                color: isDark ? AppColors.appSecondaryColor : AppColors.appTernaryColor2,
              ),
            ),
            Flexible(
              child: AppText(
                text: title,
                maxLines: 3,
                style: isDark ? FontTypography.fontStyle10SecondaryMed : FontTypography
                    .fontStyle10WhiteMed,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
