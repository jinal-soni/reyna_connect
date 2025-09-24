import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/style/font/font_typography.dart';

/// Created by: Jinal Soni
/// Date: 19/03/25
/// Description: [MyAppBar]

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? titleSpacing;
  final List<Widget>? actionList;
  final VoidCallback? callback;
  final bool? automaticallyImplyLeading;
  final bool? backBtn;
  final double? elevation;
  final bool? isProfilePicVisible;
  final Widget? widget;
  final bool? centerTitle;
  final bool? isIcon;
  final bool isDark;

  const MyAppBar(
      {super.key,
      required this.title,
      this.titleSpacing,
      this.actionList,
      this.callback,
      this.automaticallyImplyLeading,
      this.backBtn,
      this.elevation,
      this.isProfilePicVisible,
      this.widget,
      this.centerTitle = false,
      required this.isDark,
      this.isIcon = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: titleSpacing ?? 0.0,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      centerTitle: centerTitle ?? true,
      leading: centerTitle == true
          ? Visibility(
              visible: backBtn == true,
              child: IconButton(
                onPressed: () {
                  callback?.call();

                  ///handle back press on calling screen if callback is not null
                  if (callback == null) {
                    Navigator.of(context).pop();
                  }
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            )
          : null,
      title: centerTitle == true
          ? Text(
              title,
              maxLines: 2,
              style: FontTypography.appBarTitleStyle.copyWith(fontSize: 18.0),
            )
          : isIcon == false
              ? Padding(
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      Visibility(
                        visible: backBtn == true,
                        child: IconButton(
                          onPressed: () {
                            callback?.call();

                            ///handle back press on calling screen if callback is not null
                            if (callback == null) {
                              Navigator.of(context).pop();
                            }
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: isProfilePicVisible == true ? true : false,
                        child: widget ?? const SizedBox(),
                      ),
                      Text(
                        title,
                        style: FontTypography.appBarTitleStyle,
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SvgPicture.asset(isDark ? ImageConstants.logoWhite : ImageConstants.logoBlack),
                ),
      backgroundColor: AppColors.transparentColor,
      foregroundColor: AppColors.whiteColor,
      surfaceTintColor: AppColors.whiteColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.appPrimaryColor.withValues(alpha:0.5),
        statusBarIconBrightness: isDark ? Brightness.dark : Brightness.light,
        statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
        systemStatusBarContrastEnforced: true,
      ),
      elevation: elevation ?? 0.0,
      actions: actionList,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
