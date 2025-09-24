// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
// import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/blogs_page/blogs_details_page.dart';
// import 'package:reyna_solution_app/src/presentation/style/font/font_typography.dart';

// /// Created by: Jinal Soni
// /// Date: 24/03/25
// /// Description: [BlogTile]

// class BlogTile extends StatelessWidget {
//   final String blogImage;
//   final String blogTypeTag;
//   final String blogTitle;
//   final String blogSubTitle;
//   final String authorName;
//   final String date;
//   final bool isMenuOpen;
//   final bool isDark;

//   const BlogTile({
//     super.key,
//     required this.blogImage,
//     required this.blogTypeTag,
//     required this.blogTitle,
//     required this.blogSubTitle,
//     required this.authorName,
//     required this.date,
//     required this.isMenuOpen,
//     required this.isDark,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: !isMenuOpen
//           ? () {
//               HapticFeedback.heavyImpact();
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => BlogsDetailsPage(
//                     isDark: isDark,
//                     blogImage: blogImage,
//                     blogTitle: blogTitle,
//                     author: authorName,
//                     blogDate: date,
//                   ),
//                 ),
//               );
//             }
//           : null,
//       child: Card(
//         color: isDark ? AppColors.appTernaryColor.withValues(alpha:0.5) : AppColors.appTernaryColor.withValues(alpha:0.8),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(18),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                     topRight: Radius.circular(14),
//                     topLeft: Radius.circular(14),
//                   ),
//                   child: Image.asset(
//                     blogImage,
//                     height: 120,
//                     fit: BoxFit.cover,
//                     width: MediaQuery.of(context).size.width,
//                   )),
//               sizedBox5(),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: Container(
//                   height: 15.0,
//                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                   decoration: BoxDecoration(
//                     color: AppColors.appSecondaryColor.withValues(alpha:0.4),
//                   ),
//                   child: Text(
//                     blogTypeTag,
//                     style: FontTypography.fontStyle10SecondaryLight,
//                   ),
//                 ),
//               ),
//               sizedBox5(),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: Text(
//                   blogTitle,
//                   // maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: FontTypography.fontStyle10WhiteSemi.copyWith(overflow: TextOverflow.ellipsis),
//                 ),
//               ),
//               sizedBox5(),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: Text(
//                   blogSubTitle,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   style: FontTypography.fontStyle10WhiteReg.copyWith(overflow: TextOverflow.ellipsis),
//                 ),
//               ),
//               sizedBox5(),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Icon(
//                         Icons.account_circle_outlined,
//                         size: 18.0,
//                         color: AppColors.whiteColor,
//                       ),
//                       const Spacer(),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width / 6,
//                         child: Text(
//                           authorName,
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 2,
//                           style: FontTypography.fontStyle10PrimaryReg.copyWith(
//                             fontSize: 8.0,
//                           ),
//                         ),
//                       ),
//                       const Spacer(),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width / 6,
//                         child: Text(
//                           date,
//                           overflow: TextOverflow.ellipsis,
//                           style: FontTypography.fontStyle10PrimaryReg.copyWith(
//                             fontSize: 8.0,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
