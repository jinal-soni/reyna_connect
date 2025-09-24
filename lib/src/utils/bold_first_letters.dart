import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';

/// Created by: Jinal Soni
/// Date: 28/03/25
/// Description: []

class BoldFirstWords extends StatelessWidget {
  final String text;
  final int totalDigits;

  const BoldFirstWords({super.key, required this.text, required this.totalDigits});

  @override
  Widget build(BuildContext context) {
    List<String> words = text.split(' ');

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: words.take(totalDigits).join(' ') + (words.length > 4 ? ' ' : ''), // First 4 words
            style: FontTypography.fontStyle14WhiteBold,
          ),
          if (words.length > totalDigits)
            TextSpan(
              text: words.skip(totalDigits).join(' '), // Remaining words
              style: FontTypography.fontStyle14WhiteReg,
            ),
        ],
      ),
    );
  }
}
