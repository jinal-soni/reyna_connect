import 'dart:io';

import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/app_label_text.dart';

/// Created by: Jinal Soni
/// Date: 15/05/25
/// Description: []

class BackGroundTileWhite extends StatefulWidget {
  final String iconImagePath;
  final String title;
  final String subTitle;
  final bool isDark;

  const BackGroundTileWhite({
    super.key,
    required this.iconImagePath,
    required this.title,
    required this.subTitle,
    required this.isDark,
  });

  @override
  State<BackGroundTileWhite> createState() => _BackGroundTileWhiteState();
}

class _BackGroundTileWhiteState extends State<BackGroundTileWhite> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Card(
        color: _isExpanded
            ? AppColors.whiteColor
            : widget.isDark
                ? AppColors.appPrimaryColor.withValues(alpha: 0.4)
                : AppColors.appPrimaryColor.withValues(alpha: 0.7),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          // height: _isExpanded ? 180 : 150,
          // width: 50,
          curve: Curves.easeInOut,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: _isExpanded
                      ? AppColors.appPrimaryColor.withValues(alpha: 0.1)
                      : widget.isDark
                          ? AppColors.whiteColor.withValues(alpha: 0.8)
                          : AppColors.whiteColor.withValues(alpha: 0.6),
                  child: Image.asset(
                    widget.iconImagePath,
                    height: 30.0,
                    width: 30.0,
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.symmetric(
                    horizontal: 8.0),
                child: AppText(
                  text: widget.title,
                  maxLines: 1,
                  style: _isExpanded
                      ? FontTypography.fontStyle14BlackSemi
                          .copyWith(fontSize: Platform.isIOS ? 14 : 13.0)
                      : FontTypography.fontStyle14WhiteSemi
                          .copyWith(fontSize: Platform.isIOS ? 14 : 13.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  widget.subTitle,
                  maxLines: _isExpanded ? 3 : 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: _isExpanded
                      ? FontTypography.fontStyle10BlackMed
                          .copyWith(fontSize: Platform.isIOS ? 10 : 9)
                      : FontTypography.fontStyle10WhiteMed
                          .copyWith(fontSize: Platform.isIOS ? 10 : 9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
