import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/widgets_exports.dart';
import 'package:share_plus/share_plus.dart';

class ImagePreviewScreen extends StatelessWidget {
  final String imageUrl;
  final bool isDark;

  const ImagePreviewScreen({
    super.key,
    required this.imageUrl,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors.transparentColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.appPrimaryColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: AppText(
          text: AppConstants.imagePreviewTitle,
          style: FontTypography.fontStyle18PrimarySemi.copyWith(fontSize: 20.0),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: InteractiveViewer(
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton(
              backgroundColor: AppColors.appPrimaryColor,
              child: const Icon(Icons.share),
              onPressed: () async {
                try {
                  final response = await http.get(Uri.parse(imageUrl));
                  final tempDir = await getTemporaryDirectory();
                  final file = File('${tempDir.path}/shared_image.jpg');
                  await file.writeAsBytes(response.bodyBytes);

                  final params = ShareParams(
                    text: 'Check out this image from Reyna Connect: $imageUrl',
                    files: [XFile(file.path)],
                  );

                  final result = await SharePlus.instance.share(params);

                  if (kDebugMode) {
                    print('Share result: $result');
                  }
                  if (result.status == ShareResultStatus.success) {
                    if (kDebugMode) {
                      print('Thank you for sharing the picture!');
                    }
                  }
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to share image: $e')),
                  );
                }
              },
            )
          ),
        ],
      ),
    );
  }
}
