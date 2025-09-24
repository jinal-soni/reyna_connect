import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/app_label_text.dart';
import 'package:reyna_solution_app/src/utils/background_ui.dart';
import 'package:reyna_solution_app/src/utils/my_app_bar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../core/constants/constants_export.dart';

/// Created by: Jinal Soni
/// Date: 20/05/25
/// Description: []

class HomeSliderDetails extends StatefulWidget {
  final String techTitle;
  final bool isDark;

  const HomeSliderDetails({super.key, required this.techTitle, required this.isDark});

  @override
  State<HomeSliderDetails> createState() => _HomeSliderDetailsState();
}

class _HomeSliderDetailsState extends State<HomeSliderDetails> {
  @override
  Widget build(BuildContext context) {
    return BackgroundUi(
      isDark: widget.isDark,
      otherWidget: Scaffold(
        backgroundColor: AppColors.transparentColor,
        appBar: MyAppBar(
          isDark: widget.isDark,
          title: AppConstants.caseStudy,
          centerTitle: true,
          isIcon: false,
          automaticallyImplyLeading: false,
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: caseStudies.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      child: SizedBox(
                        height: 500,
                        width: 350,
                        child: PdfViewWidget(pdfPath: caseStudies[index]['linkToView'] ?? ''),
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 180,
                  width: double.infinity,
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.appPrimaryColor.withAlpha(60),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          caseStudies[index]['image'] ?? '',
                          fit: BoxFit.cover,
                          height: 130,
                          width: 130,
                        ),
                      ),
                      sizedBox20Width(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBox20(),
                            Flexible(
                              child: AppText(
                                text: caseStudies[index]['title'] ?? '',
                                style: FontTypography.white16Opacity08Semi,
                                maxLines: 3,
                              ),
                            ),
                            Flexible(
                              child: AppText(
                                text: caseStudies[index]['subTitle'] ?? '',
                                style: FontTypography.white12Opacity08Reg,
                                maxLines: 5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class PdfViewWidget extends StatelessWidget {
  final String pdfPath;

  const PdfViewWidget({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(pdfPath);
  }
}
