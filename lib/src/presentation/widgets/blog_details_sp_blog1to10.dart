// import 'package:flutter/material.dart';
// import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
// import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
// import 'package:reyna_solution_app/src/presentation/widgets/app_label_text.dart';

// /// Created by: Jinal Soni
// /// Date: 24/03/25
// /// Description: []

// Widget blog1(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(
//           text: blogTitle,
//           style: isDark
//               ? FontTypography.fontStyle18PrimaryBold
//               : FontTypography.fontStyle16BlackBold.copyWith(fontSize: 18)),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubTitle1,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString1,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString2,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog1SubTitle2,
//         style: isDark ? FontTypography.fontStyle16PrimaryReg : FontTypography.fontStyle16BlackReg,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString3,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString4,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//           text: AppConstants.blog1SubTitle3,
//           style: isDark ? FontTypography.fontStyle16PrimaryReg : FontTypography.fontStyle16BlackReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString5,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString6,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString7,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog1SubTitle5,
//         style: isDark ? FontTypography.fontStyle16PrimaryReg : FontTypography.fontStyle16BlackReg,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString8,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString9,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1SubString10,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.conclusion,
//         style: isDark ? FontTypography.fontStyle16PrimaryReg : FontTypography.fontStyle16BlackReg,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog1Conclusion,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog2(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(
//         text: blogTitle,
//         style: isDark ? FontTypography.fontStyle18PrimaryBold : FontTypography.fontStyle16BlackBold,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2SubString1,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2SubString2,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2SubString3,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog2SubTitle1,
//         style: isDark ? FontTypography.fontStyle16PrimaryReg : FontTypography.fontStyle16BlackReg,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2SubString4,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2SubString5,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2SubString6,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2SubString7,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//           text: AppConstants.blog2SubTitle2,
//           style: isDark ? FontTypography.fontStyle16PrimaryReg : FontTypography.fontStyle16BlackReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2SubString8,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       ListView.builder(
//           itemCount: blog2points.length,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                     text: "• ",
//                     style: isDark ? FontTypography.fontStyle16WhiteReg : FontTypography.fontStyle16BlackReg),
//                 Expanded(
//                     child: Text(blog2points[index],
//                         style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//                         textAlign: TextAlign.justify))
//               ],
//             );
//           }),
//       sizedBox15(),
//       AppText(
//           text: AppConstants.conclusion,
//           style: isDark ? FontTypography.fontStyle16PrimaryReg : FontTypography.fontStyle16BlackReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog2Conclusion,
//           style: isDark ? FontTypography.fontStyle14WhiteReg : FontTypography.fontStyle14BlackReg,
//           textAlign: TextAlign.justify),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog3(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(
//           text: blogTitle,
//           style: isDark
//               ? FontTypography.fontStyle18PrimaryBold
//               : FontTypography.fontStyle16BlackBold.copyWith(fontSize: 18.0)),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog3SubString1, style: isDark ? FontTypography.fontStyle14WhiteReg :FontTypography
//           .fontStyle14BlackReg, textAlign: TextAlign
//           .justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog3SubString2, style: isDark ? FontTypography.fontStyle14WhiteReg :FontTypography
//           .fontStyle14BlackReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       ListView.builder(
//           itemCount: blog3SubString2Points.length,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(text: "• ", style:isDark?  FontTypography.fontStyle16WhiteReg : FontTypography
//                     .fontStyle16BlackReg),
//                 Expanded(
//                     child: AppText(
//                         text: blog3SubString2Points[index],
//                         style: isDark ? FontTypography.fontStyle14WhiteReg :FontTypography
//                             .fontStyle14BlackReg,
//                         textAlign: TextAlign.justify))
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(text: AppConstants.blog3SubTitle1, style: isDark?  FontTypography.fontStyle16WhiteReg : FontTypography
//           .fontStyle16BlackReg),
//       sizedBox10(),
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(text: "• ", style:isDark?  FontTypography.fontStyle16WhiteReg : FontTypography
//               .fontStyle16BlackReg),
//           Expanded(
//               child: AppText(
//                   text: AppConstants.blog3SubTitle1P1,
//                   style: isDark ? FontTypography.fontStyle14WhiteBold :FontTypography
//                       .fontStyle14BlackBold,
//                   textAlign: TextAlign.justify))
//         ],
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog3SubString3, style: isDark ? FontTypography.fontStyle14WhiteReg :FontTypography
//           .fontStyle14BlackReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(text: "• ", style: isDark ? FontTypography.fontStyle16WhiteReg : FontTypography.fontStyle16BlackReg),
//           Expanded(
//               child: AppText(
//                   text: AppConstants.blog3SubTitle1P2,
//                   style: isDark ? FontTypography.fontStyle14WhiteBold :FontTypography
//                       .fontStyle14BlackBold,
//                   textAlign: TextAlign.justify))
//         ],
//       ),
//       AppText(
//           text: AppConstants.blog3SubString4, style: isDark ? FontTypography.fontStyle16WhiteReg : FontTypography.fontStyle16BlackReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AppText(text: "• ", style: FontTypography.fontStyle16WhiteReg),
//           Expanded(
//               child: AppText(
//                   text: AppConstants.blog3SubTitle1P3,
//                   style: isDark ? FontTypography.fontStyle16WhiteBold : FontTypography.fontStyle16BlackBold,
//                   textAlign: TextAlign.justify))
//         ],
//       ),
//       AppText(
//           text: AppConstants.blog3SubString5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog3SubTitle2, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog3SubString6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog3SubTitle3, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       ListView.builder(
//           itemCount: blog3SubTitle3Points.length,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(text: "• ", style: FontTypography.fontStyle16WhiteReg),
//                 Expanded(
//                     child: AppText(
//                         text: blog3SubTitle3Points[index],
//                         style: FontTypography.fontStyle14WhiteReg,
//                         textAlign: TextAlign.justify))
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(text: AppConstants.blog3SubTitle4, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog3SubString7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog3SubTitle5, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog3SubString8, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog4(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4SubString1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4SubString2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog4SubTitle1, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4SubString3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog4SubTitle2, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4SubString4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog4SubTitle3, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4SubString5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4SubString6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4SubString7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog4SubTitle4, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4SubString8, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       ListView.builder(
//           itemCount: blog4SubTitle4Points.length,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(text: "• ", style: FontTypography.fontStyle16WhiteReg),
//                 Expanded(
//                     child: AppText(
//                         text: blog4SubTitle4Points[index],
//                         style: FontTypography.fontStyle14WhiteReg,
//                         textAlign: TextAlign.justify))
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(text: AppConstants.conclusion, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4Conclusion1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4Conclusion2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog4Conclusion3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog5(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog5SubStr1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog5SubStr2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog5SubStr3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog5SubTitle1, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(text: AppConstants.blog5SubStr4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog5SubStr5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog5SubTitle2, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(text: AppConstants.blog5SubStr6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       ListView.builder(
//           itemCount: blog5SubTitle2Points.length,
//           shrinkWrap: true,
//           padding: EdgeInsets.zero,
//           physics: const NeverScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     AppText(
//                         text: blog5SubTitle2Points[index][AppConstants.numbering]!,
//                         style: FontTypography.fontStyle16WhiteReg),
//                     Expanded(
//                         child: AppText(
//                             text: blog5SubTitle2Points[index][AppConstants.title]!,
//                             style: FontTypography.fontStyle14WhiteSemi,
//                             textAlign: TextAlign.justify)),
//                   ],
//                 ),
//                 sizedBox15(),
//                 AppText(
//                     text: blog5SubTitle2Points[index][AppConstants.subTitle]!,
//                     style: FontTypography.fontStyle14WhiteReg,
//                     textAlign: TextAlign.justify),
//                 sizedBox15(),
//               ],
//             );
//           }),
//       AppText(text: AppConstants.blog5SubTitle3, style: FontTypography.fontStyle16PrimaryReg),
//       sizedBox10(),
//       AppText(text: AppConstants.blog5SubStr7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog5SubStr8, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog6(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog6SubStr1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog6SubTitle1,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog6SubStr2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(text: AppConstants.blog6SubStr3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog6SubTitle2,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog6SubStr4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(text: AppConstants.blog6SubStr5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog6SubTitle3,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog6SubStr6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(text: AppConstants.blog6SubStr7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog6SubTitle4,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(
//         text: AppConstants.blog6SubStr8,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog6SubStr9,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog6SubStr10,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog6SubTitle5,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(
//         text: AppConstants.blog6SubStr11,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog6SubStr12,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog6SubTitle6,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(
//         text: AppConstants.blog6SubStr13,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog6SubStr14,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog6SubStr15,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog6SubTitle7,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(
//         text: AppConstants.blog6SubStr16,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog6SubStr17,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog6SubStr18,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog7(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog7SubStr1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog7SubTitle1,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog7SubStr2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(text: AppConstants.blog7SubStr3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog7SubTitle2,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog7SubStr4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(text: AppConstants.blog7SubStr5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog7SubTitle3,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog7SubStr6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(text: AppConstants.blog7SubStr7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog7SubTitle4,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(
//         text: AppConstants.blog7SubStr8,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog7SubStr9,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog7SubTitle5,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(
//         text: AppConstants.blog7SubStr10,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog7SubTitle6,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(
//         text: AppConstants.blog7SubStr13,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog8(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog8SubStr1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog8SubTitle1,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog8SubStr2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog8SubTitle2,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog8SubStr3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog8SubTitle3,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog8SubStr4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog8SubTitle4,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog8SubStr5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog8SubTitle5,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog8SubStr6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog8SubTitle6,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog8SubStr7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog8SubTitle7,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox15(),
//       AppText(text: AppConstants.blog8SubStr8, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog8SubStr9, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog9(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog9SubTitle1,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog9SubTitle2,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog9SubTitle3,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr8, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(text: AppConstants.blog9SubStr9, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog9SubTitle4,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog9SubStr10, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog9SubTitle5,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog9SubStr11, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog9SubStr12, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }

// Widget blog10(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog10SubTitle1, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog10SubTitle2, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog10SubTitle2P1,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog10SubTitle2P2,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(
//           text: AppConstants.blog10SubStr6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog10SubTitle2P3,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr8, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog10SubTitle2P4,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr9, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(
//           text: AppConstants.blog10SubStr10, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(
//           text: AppConstants.blog10SubStr11, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog10SubTitle2P5,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr12, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog10SubTitle2P6,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog10SubStr13, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox8(),
//       AppText(
//           text: AppConstants.blog10SubStr14, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: AppColors.appPrimaryColor.withValues(alpha:0.4),
//                 child: Icon(Icons.person, size: 18.0, color: AppColors.whiteColor),
//               ),
//               sizedBox20Width(),
//               AppText(text: author, style: FontTypography.fontStyle16PrimaryReg),
//             ],
//           ),
//           AppText(text: date, style: FontTypography.fontStyle16PrimaryReg),
//         ],
//       ),
//     ],
//   );
// }
