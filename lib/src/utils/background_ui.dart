import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Created by: Jinal Soni
/// Date: 19/03/25
/// Description: [BackgroundUi]

class BackgroundUi extends StatelessWidget {
  final Widget otherWidget;
  final bool isDark;

  const BackgroundUi({
    super.key,
    required this.otherWidget,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        kIsWeb
            ? Positioned(
                top: 25.0,
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                child: Opacity(
                  opacity: 0.3,
                  child: SvgPicture.asset(
                    'asset/icons/app_background/background.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : Platform.isIOS
                ? Positioned(
                    top: 0.0,
                    bottom: 0.0,
                    right: 0.0,
                    left: 0.0,
                    child: Opacity(
                      opacity: isDark ? 0.3 : 1,
                      child: Image.asset(
                        isDark
                            ? 'asset/icons/app_background/background_mobile.png'
                            : 'asset/icons/app_background/background_white.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Positioned(
                    top: 24.0,
                    bottom: 0.0,
                    right: 0.0,
                    left: 0.0,
                    child: Opacity(
                      opacity: isDark ? 0.3 : 1,
                      child: Image.asset(
                        isDark
                            ? 'asset/icons/app_background/background_mobile.png'
                            : 'asset/icons/app_background/background_white.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
        otherWidget,
      ],
    );
  }
}
