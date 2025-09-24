// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
// import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/blogs_page/blogs_details_page.dart';
// import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
// import 'package:reyna_solution_app/src/presentation/widgets/app_label_text.dart';

// /// Created by: Jinal Soni
// /// Date: 27/03/25
// /// Description: [FullSizeBackGroundTile]

// class FullSizeBackGroundTile extends StatelessWidget {
//   final String blogImage;
//   final String blogTitle;
//   final String blogSubTitle;
//   final String blogAuthor;
//   final String blogDate;
//   final bool isMenuOpen;
//   final bool isDark;

//   const FullSizeBackGroundTile({
//     super.key,
//     required this.blogImage,
//     required this.blogTitle,
//     required this.blogSubTitle,
//     required this.blogAuthor,
//     required this.blogDate,
//     required this.isMenuOpen,
//     required this.isDark,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: !isMenuOpen ? () {
//         HapticFeedback.heavyImpact();

//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => BlogsDetailsPage(
//               blogImage: blogImage,
//               blogTitle: blogTitle,
//               author: blogAuthor,
//               blogDate: blogDate, isDark: isDark,
//             ),
//           ),
//         );
//       } : null,
//       child: Container(
//         height: 200,
//           decoration: BoxDecoration(
//             color: AppColors.appTernaryColor.withValues(alpha:0.5),
//             borderRadius: BorderRadius.circular(18.0),
//           ),
//           child: Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(18.0),
//                 child: Opacity(
//                   opacity: 0.35,
//                   child: Image.asset(
//                     blogImage,
//                     fit: BoxFit.cover,
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 50,
//                 left: 60,
//                 right: 50,
//                 bottom: 80,
//                 child: AppText(
//                   text: blogTitle,
//                   style: FontTypography.fontStyle14WhiteSemi,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               Positioned(
//                 top: 90,
//                 left: 60,
//                 right: 50,
//                 bottom: 40,
//                 child: AppText(
//                   text: blogSubTitle,
//                   style: FontTypography.fontStyle10WhiteReg,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }
