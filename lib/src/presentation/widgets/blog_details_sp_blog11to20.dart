// import 'package:flutter/material.dart';
// import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
// import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
// import 'package:reyna_solution_app/src/presentation/widgets/app_label_text.dart';
// import 'package:reyna_solution_app/src/utils/utils_export.dart';

// /// Created by: Jinal Soni
// /// Date: 28/03/25
// /// Description: []

// Widget blog11(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr1,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog11SubTitle1,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr2,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr3,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr4,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr5,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog11SubTitle2,
//         style: FontTypography.fontStyle18PrimaryBold,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr6,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr7,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog11SubTitle3,
//         style: FontTypography.fontStyle18PrimaryBold,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr8,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog11SubTitle4,
//         style: FontTypography.fontStyle18PrimaryBold,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr9,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog11SubTitle5,
//         style: FontTypography.fontStyle18PrimaryBold,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog11SubStr10,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.conclusion,
//         style: FontTypography.fontStyle18PrimaryBold,
//       ),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog11Conclusion1,
//           style: FontTypography.fontStyle14WhiteReg,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog11Conclusion2,
//           style: FontTypography.fontStyle14WhiteReg,
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

// Widget blog12(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog12SubTittle1, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog12SubTittle2, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubTittle2P1,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//           text: AppConstants.blog12SubTittle2P2,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog12SubTittle3, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog12SubTittle4, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       ListView.builder(
//           shrinkWrap: true,
//           itemCount: blog12SubTitle4Points.length,
//           physics: const NeverScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Column(
//               children: [
//                 Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     AppText(
//                         text: blog12SubTitle4Points[index][AppConstants.numbering]!,
//                         style: FontTypography.fontStyle14WhiteSemi,
//                         textAlign: TextAlign.justify),
//                     AppText(
//                         text: blog12SubTitle4Points[index][AppConstants.title]!,
//                         style: FontTypography.fontStyle14WhiteSemi,
//                         textAlign: TextAlign.justify),
//                   ],
//                 ),
//                 sizedBox8(),
//                 AppText(
//                     text: blog12SubTitle4Points[index][AppConstants.subTitle]!,
//                     style: FontTypography.fontStyle14WhiteReg,
//                     textAlign: TextAlign.justify),
//               ],
//             );
//           }),
//       AppText(text: AppConstants.blog12SubTittle5, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr9, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       ListView.builder(
//           shrinkWrap: true,
//           itemCount: blog12SubTitle5Points.length,
//           physics: const NeverScrollableScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AppText(
//                   text: blog12SubTitle5Points[index][AppConstants.numbering]!,
//                   style: FontTypography.fontStyle16WhiteSemi,
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width / 1.2,
//                   child: AppText(
//                     text: blog12SubTitle5Points[index][AppConstants.subTitle]!,
//                     style: FontTypography.fontStyle14WhiteReg,
//                     textAlign: TextAlign.justify,
//                   ),
//                 ),
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(text: AppConstants.blog12SubTittle6, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubTittle6P1,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr15, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//           text: AppConstants.blog12SubTittle6P2,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr16, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//           text: AppConstants.blog12SubTittle6P3,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr17, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.conclusion, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog12SubStr18, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
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

// Widget blog13(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr1, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr2, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr3, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.blog13SubTitle1, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubTitle1P1,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr4, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//           text: AppConstants.blog13SubTitle1P2,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr5, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//           text: AppConstants.blog13SubTitle1P3,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr6, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(
//           text: AppConstants.blog13SubTitle1P4,
//           style: FontTypography.fontStyle14WhiteSemi,
//           textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr7, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr8, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
//       sizedBox20(),
//       AppText(text: AppConstants.conclusion, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//           text: AppConstants.blog13SubStr9, style: FontTypography.fontStyle14WhiteReg, textAlign: TextAlign.justify),
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

// Widget blog14(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog14SubStr1,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog14SubStr2,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog14SubStr3,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog14SubStr4,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog14SubStr5,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog14SubStr6,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog14SubStr7,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog14SubStr8,
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

// Widget blog15(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog15SubStr1,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog15SubStr2,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog15SubStr3,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog15SubStr4,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog15SubStr5,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog15SubStr6,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog15SubStr7,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog15SubStr8,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog15SubStr9,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog15SubStr10,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog15SubStr11,
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

// Widget blog16(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr1,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr2,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr3,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog16SubStr4,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr5,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr6,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr7,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr8,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr9,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog16SubStr10,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog16SubStr11,
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

// Widget blog17(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog17SubStr1,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog17SubStr2,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog17SubStr3,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog17SubStr4,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog17SubStr5,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       AppText(text: AppConstants.blog17SubTitle1, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox20(),
//       const BoldFirstWords(text: AppConstants.blog17SubStr6, totalDigits: 6),
//       sizedBox20(),
//       const BoldFirstWords(text: AppConstants.blog17SubStr7, totalDigits: 6),
//       sizedBox20(),
//       const BoldFirstWords(text: AppConstants.blog17SubStr8, totalDigits: 5),
//       sizedBox20(),
//       const BoldFirstWords(text: AppConstants.blog17SubStr9, totalDigits: 7),
//       sizedBox20(),
//       AppText(text: AppConstants.conclusion, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog17Conclusion,
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

// Widget blog18(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr1,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr2,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog18SubTitle1, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr3,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog18SubTitle2, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox15(),
//       AppText(text: AppConstants.blog18SubTitle2P1, style: FontTypography.fontStyle16PrimaryBold),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog18SubStr4,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox8(),
//       AppText(
//         text: AppConstants.blog18SubStr5,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog18SubTitle2P2, style: FontTypography.fontStyle16PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr6,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog18SubTitle2P3, style: FontTypography.fontStyle16PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr7,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog18SubTitle2P4, style: FontTypography.fontStyle16PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr8,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog18SubTitle2P5, style: FontTypography.fontStyle16PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr9,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog18SubTitle2P6, style: FontTypography.fontStyle16PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr10,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog18SubTitle2P7, style: FontTypography.fontStyle16PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr11,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.conclusion, style: FontTypography.fontStyle16PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr12,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr13,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog18SubStr14,
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

// Widget blog19(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog19SubTitle1, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog19SubStr1,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog19SubStr2,
//         style: FontTypography.fontStyle14WhiteReg,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog19SubTitle2,
//         style: FontTypography.fontStyle14WhiteSemi,
//         textAlign: TextAlign.justify,
//       ),
//       sizedBox20(),
//       ListView.builder(
//           shrinkWrap: true,
//           itemCount: blog19pointsSubTitle2.length,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           itemBuilder: (context, index) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AppText(
//                   text: blog19pointsSubTitle2[index],
//                   style: FontTypography.fontStyle14WhiteReg,
//                 ),
//                 sizedBox10(),
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(
//         text: AppConstants.blog19SubStr11,
//         style: FontTypography.fontStyle14WhiteReg,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog19SubStr12,
//         style: FontTypography.fontStyle14WhiteReg,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog19SubStr13,
//         style: FontTypography.fontStyle14WhiteReg,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog19SubStr14,
//         style: FontTypography.fontStyle14WhiteReg,
//       ),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog19SubStr15,
//         style: FontTypography.fontStyle14WhiteReg,
//       ),
//       sizedBox20(),
//       AppText(text: AppConstants.blog19SubTitle3, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       ListView.builder(
//           shrinkWrap: true,
//           itemCount: blog19pointsSubTitle3.length,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           itemBuilder: (context, index) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AppText(
//                   text: blog19pointsSubTitle3[index],
//                   style: FontTypography.fontStyle14WhiteReg,
//                 ),
//                 sizedBox10(),
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(text: AppConstants.blog19SubTitle4, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       ListView.builder(
//           shrinkWrap: true,
//           itemCount: blog19pointsSubTitle4.length,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           itemBuilder: (context, index) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AppText(
//                   text: blog19pointsSubTitle4[index],
//                   style: FontTypography.fontStyle14WhiteReg,
//                 ),
//                 sizedBox10(),
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(text: AppConstants.blog19SubTitle5, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(
//         text: AppConstants.blog19SubStr20,
//         style: FontTypography.fontStyle14WhiteReg,
//       ),
//       sizedBox10(),
//       ListView.builder(
//           shrinkWrap: true,
//           itemCount: blog19pointsSubTitle5.length,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           itemBuilder: (context, index) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AppText(
//                   text: blog19pointsSubTitle5[index],
//                   style: FontTypography.fontStyle14WhiteReg,
//                 ),
//                 sizedBox10(),
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(text: AppConstants.blog19SubTitle6, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       ListView.builder(
//           shrinkWrap: true,
//           itemCount: blog19pointsSubTitle6.length,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           itemBuilder: (context, index) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AppText(
//                   text: blog19pointsSubTitle6[index],
//                   style: FontTypography.fontStyle14WhiteReg,
//                 ),
//                 sizedBox10(),
//               ],
//             );
//           }),
//       sizedBox10(),
//       AppText(text: AppConstants.blog19SubStr30, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox10(),
//       ListView.builder(
//           shrinkWrap: true,
//           itemCount: blog19pointsSubTitle6P1.length,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           itemBuilder: (context, index) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AppText(
//                   text: blog19pointsSubTitle6P1[index],
//                   style: FontTypography.fontStyle14WhiteReg,
//                 ),
//                 sizedBox10(),
//               ],
//             );
//           }),
//       sizedBox20(),
//       AppText(text: AppConstants.conclusion, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog19SubStr35, style: FontTypography.fontStyle14WhiteReg),
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

// Widget blog20(bool isDark, {required String blogTitle, required String author, required String date}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       AppText(text: blogTitle, style: FontTypography.fontStyle18PrimaryBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubTitle1, style: FontTypography.fontStyle16WhiteBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr1, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr2, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox20(),
//       AppText(text: AppConstants.blog20SubTitle2, style: FontTypography.fontStyle16WhiteBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr3, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr4, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox20(),
//       AppText(text: AppConstants.blog20SubTitle3, style: FontTypography.fontStyle16WhiteBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr5, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr6, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox20(),
//       AppText(text: AppConstants.blog20SubTitle4, style: FontTypography.fontStyle16WhiteBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr7, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox20(),
//       AppText(text: AppConstants.blog20SubTitle5, style: FontTypography.fontStyle16WhiteBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr8, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox20(),
//       AppText(text: AppConstants.blog20SubTitle6, style: FontTypography.fontStyle16WhiteBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr9, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox20(),
//       AppText(text: AppConstants.blog20SubTitle7, style: FontTypography.fontStyle16WhiteBold),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr10, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr11, style: FontTypography.fontStyle14WhiteReg),
//       sizedBox10(),
//       AppText(text: AppConstants.blog20SubStr12, style: FontTypography.fontStyle14WhiteReg),
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
