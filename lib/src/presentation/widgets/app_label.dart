import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/core/constants/app_constants.dart';
import 'package:reyna_solution_app/src/presentation/style/font/font_typography.dart';

/// Created by: Jinal Soni
/// Date: 25/03/25
/// Description: [AppText]

class AppLabel extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final bool? isRequired;

  const AppLabel({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.overflow,
    this.isRequired,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          softWrap: true,
          style: style ?? FontTypography.fontStyle14WhiteReg,
          textAlign: textAlign,
          maxLines: 1,
          overflow: overflow,
        ),
        const SizedBox(width: 2.0),
        Visibility(
          visible: isRequired == true ? true : false,
          child: const SizedBox(
            height: 20,
            width: 20,
            child: Text(
              '*',
              softWrap: true,
              style: TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.normal,
                fontFamily: AppConstants.mediumFontFamily,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
