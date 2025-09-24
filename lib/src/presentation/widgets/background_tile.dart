import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/app_label_text.dart';

/// Created by: Jinal Soni
/// Date: 20/03/25
/// Description: [BackGroundTile]

class BackGroundTile extends StatelessWidget {
  final String iconImagePath;
  final String title;
  final String subText;
  final Color? color;
  final TextStyle? titleTextStyle;
  final bool isDark;

  const BackGroundTile({
    super.key,
    required this.iconImagePath,
    required this.title,
    required this.subText,
    required this.isDark,
    this.color,
    this.titleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? AppColors.appTernaryColor.withValues(alpha:0.2),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            // color: AppColors.appTernaryColor.withValues(alpha:0.2),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.appSecondaryColor.withValues(alpha:0.3),
                  child: SvgPicture.asset(
                    iconImagePath,
                    height: 20.0,
                    width: 20.0,
                    color: isDark ? AppColors.appSecondaryColor : AppColors.whiteColor,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: AppText(
                    text: title,
                    maxLines: 5,
                    style: titleTextStyle ?? FontTypography.fontStyle14WhiteSemi.copyWith(fontSize: 13.0),
                  ),
                ),
              ],
            ),
            Flexible(
              child: AppText(
                text: subText,
                maxLines: 12,
                style: FontTypography.fontStyle10WhiteMed,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
