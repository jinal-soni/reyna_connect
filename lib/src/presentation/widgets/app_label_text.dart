import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/presentation/style/font/font_typography.dart';

/// Created by: Jinal Soni
/// Date: 25/03/25
/// Description: [AppText]

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const AppText({super.key, required this.text, this.style, this.textAlign, this.maxLines, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: style ?? FontTypography.fontStyle14WhiteReg,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
