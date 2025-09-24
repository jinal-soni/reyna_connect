import 'dart:io';

import 'package:flutter/material.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/style/style_exports.dart';
import 'package:reyna_solution_app/src/presentation/widgets/app_label_text.dart';
import 'package:simple_connection_checker/simple_connection_checker.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../widgets/app_label.dart';

/// Created by: Jinal Soni
/// Date: 19/05/25
/// Description: []
///

class Page2ScreenHireDeveloper extends StatefulWidget {
  final bool isDark;

  const Page2ScreenHireDeveloper({super.key, required this.isDark});

  @override
  State<Page2ScreenHireDeveloper> createState() =>
      _Page2ScreenHireDeveloperState();
}

class _Page2ScreenHireDeveloperState extends State<Page2ScreenHireDeveloper> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final companyController = TextEditingController();
  final employmentTypeController = TextEditingController();
  final messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? selectedValue;
  final List<String> employmentType = [
    AppConstants.fullTimeHiring,
    AppConstants.contract,
    AppConstants.contractHiring,
    AppConstants.msp,
    AppConstants.sow,
    AppConstants.managingPayroll,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: AppConstants.hireDeveloper,
              style: widget.isDark
                  ? FontTypography.fontStyle18PrimarySemi
                  : FontTypography.fontStyle16BlackSemi
                      .copyWith(fontSize: 18.0),
            ),
            sizedBox10(),
            AppText(
              text: AppConstants.hireDeveloperSub,
              style: Platform.isIOS
                  ? widget.isDark
                      ? FontTypography.white14Opacity08Reg
                      : FontTypography.black14Opacity08Reg
                  : widget.isDark
                      ? FontTypography.fontStyle12PrimaryMed
                      : FontTypography.fontStyle12BlackMed,
            ),
            sizedBox15(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  color: widget.isDark
                      ? AppColors.appPrimaryColor.withValues(alpha: 0.2)
                      : AppColors.appSecondaryColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLabel(
                    text: AppConstants.nameStr,
                    isRequired: true,
                    style: widget.isDark
                        ? FontTypography.fontStyle14WhiteMed
                        : FontTypography.fontStyle14TernaryMed,
                  ),
                  sizedBox5(),
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    cursorColor: AppColors.appPrimaryColor,
                    style: widget.isDark
                        ? FontTypography.fontStyle12WhiteMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12)
                        : FontTypography.fontStyle12BlackMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      errorStyle:
                          const TextStyle(color: Colors.red, fontSize: 12.0),
                      focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  sizedBox15(),
                  AppLabel(
                    text: AppConstants.emailIdStr,
                    isRequired: true,
                    style: widget.isDark
                        ? FontTypography.fontStyle14WhiteMed
                        : FontTypography.fontStyle14TernaryMed,
                  ),
                  sizedBox5(),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: AppColors.appPrimaryColor,
                    style: widget.isDark
                        ? FontTypography.fontStyle12WhiteMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12)
                        : FontTypography.fontStyle12BlackMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                    decoration: InputDecoration(
                      errorStyle:
                          const TextStyle(color: Colors.red, fontSize: 12.0),
                      focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                          .hasMatch(value.trim())) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  sizedBox15(),
                  AppLabel(
                    text: AppConstants.companyNameStr,
                    isRequired: false,
                    style: widget.isDark
                        ? FontTypography.fontStyle14WhiteMed
                        : FontTypography.fontStyle14TernaryMed,
                  ),
                  sizedBox5(),
                  TextFormField(
                    controller: companyController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    style: widget.isDark
                        ? FontTypography.fontStyle12WhiteMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12)
                        : FontTypography.fontStyle12BlackMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                    cursorColor: AppColors.appPrimaryColor,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                    ),
                  ),
                  sizedBox15(),
                  AppLabel(
                    text: AppConstants.employmentTypeStr,
                    isRequired: false,
                    style: widget.isDark
                        ? FontTypography.fontStyle14WhiteMed
                        : FontTypography.fontStyle14TernaryMed,
                  ),
                  sizedBox5(),
                  DropdownButtonFormField<String>(
                    style: widget.isDark
                        ? FontTypography.fontStyle12WhiteMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12)
                        : FontTypography.fontStyle12BlackMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                    dropdownColor: widget.isDark
                        ? AppColors.blackColor
                        : AppColors.whiteColor,
                    iconEnabledColor: widget.isDark
                        ? AppColors.whiteColor
                        : AppColors.blackColor,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.appPrimaryColor, width: 2.0)),
                    ),
                    value: selectedValue,
                    items: employmentType.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: widget.isDark
                              ? FontTypography.fontStyle12WhiteMed
                                  .copyWith(fontSize: Platform.isIOS ? 14 : 12)
                              : FontTypography.fontStyle12BlackMed
                                  .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                  ),
                  sizedBox15(),
                  AppLabel(
                    text: AppConstants.messageStr,
                    isRequired: true,
                    style: widget.isDark
                        ? FontTypography.fontStyle14WhiteMed
                        : FontTypography.fontStyle14TernaryMed,
                  ),
                  sizedBox2(),
                  TextFormField(
                    controller: messageController,
                    maxLines: 5,
                    cursorColor: AppColors.appPrimaryColor,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.done,
                    style: widget.isDark
                        ? FontTypography.fontStyle12WhiteMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12)
                        : FontTypography.fontStyle12BlackMed
                            .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                    decoration: InputDecoration(
                      hintText: AppConstants.typeYourMessageHere,
                      hintStyle: widget.isDark
                          ? FontTypography.fontStyle12WhiteMed
                          : FontTypography.fontStyle12BlackMed,
                      errorStyle:
                          const TextStyle(color: Colors.red, fontSize: 12.0),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.appPrimaryColor)),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your message';
                      }
                      return null;
                    },
                  ),
                  sizedBox32(),
                  Center(
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: MaterialButton(
                          color:
                              AppColors.appPrimaryColor.withValues(alpha: 0.8),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              bool isConnected = await SimpleConnectionChecker
                                  .isConnectedToInternet();
                              if (!isConnected) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('No Internet Connection')),
                                );
                              } else {
                                await launchEmail();
                              }
                            }
                          },
                          child: Text(
                            AppConstants.submitStr,
                            style: widget.isDark
                                ? FontTypography.fontStyle16WhiteSemi
                                : FontTypography.fontStyle16TernarySemi,
                          )),
                    ),
                  ),
                  sizedBox20(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'info@reynasolutions.com',
      query: Uri.encodeFull(
        'subject=Hire Developer Request&body=Name: ${nameController.text}\nEmail: ${emailController.text}\nCompany: ${companyController.text}\nEmployment Type: $selectedValue\nMessage: ${messageController.text}',
      ),
    );

    if (await canLaunchUrl(emailUri)) {
      final bool launched = await launchUrl(
        emailUri,
        mode: LaunchMode.externalApplication,
      );

      if (launched) {
        await Future.delayed(const Duration(seconds: 5));
        await clearFieldAfterSend();
      } else {
        showFailureSnackbar();
      }
    } else {
      showFailureSnackbar();
    }
  }

  void showFailureSnackbar() {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to send email')),
      );
    }
  }

  Future<void> clearFieldAfterSend() async {
    nameController.clear();
    emailController.clear();
    companyController.clear();
    selectedValue = '';
    messageController.clear();
  }

  @override
  void dispose() {
    nameController.clear();
    emailController.clear();
    companyController.clear();
    selectedValue = '';
    messageController.clear();
    super.dispose();
  }
}
