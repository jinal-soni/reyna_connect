import 'dart:async';
import 'dart:io';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:provider/provider.dart';
import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/home_page/know_more_about_us.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/home_page/page_1_screen.dart';
import 'package:reyna_solution_app/src/presentation/modules/dashboard/view/company_page/page_3_screen.dart';
import 'package:reyna_solution_app/src/utils/utils_export.dart';
import 'package:simple_connection_checker/simple_connection_checker.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../style/font/font_typography.dart';
import '../../../widgets/app_label.dart';
import 'blogs_page/page_2_screen_hire_developer.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> with TickerProviderStateMixin {
  final _pageController = PageController(initialPage: 1);
  int maxCount = 3;
  final NotchBottomBarController _controller = NotchBottomBarController(index: 1);
  bool isDarkTheme = false;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  final GlobalKey<ExpandableFabState> _key = GlobalKey<ExpandableFabState>();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showInitialDialog(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isDarkTheme = context.watch<ThemeProvider>().isDarkMode;

    final List<Widget> bottomBarPages = <Widget>[
      Page2ScreenHireDeveloper(isDark: isDarkTheme),
      Page1Screen(isDark: isDarkTheme),
      Page3Screen(isDark: isDarkTheme),
    ];

    return BackgroundUi(
      isDark: isDarkTheme,
      otherWidget: Scaffold(
        backgroundColor: AppColors.transparentColor,
        appBar: MyAppBar(
          title: '',
          centerTitle: false,
          isIcon: true,
          isDark: isDarkTheme,
          actionList: [
            IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              icon: Icon(
                isDarkTheme ? Icons.wb_sunny : Icons.nightlight_round,
                color: AppColors.appSecondaryColor,
              ),
              onPressed: () {
                context.read<ThemeProvider>().toggleTheme();
              },
            ),
          ],
        ),
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: ExpandableFab(
          key: _key,
          openButtonBuilder: RotateFloatingActionButtonBuilder(
            child: Icon(Icons.menu, color: AppColors.whiteColor),
            fabSize: ExpandableFabSize.regular,
            backgroundColor: AppColors.appPrimaryColor,
            shape: const CircleBorder(),
            angle: 3.14 * 3,
            elevation: 5,
          ),
          closeButtonBuilder: FloatingActionButtonBuilder(
            size: 56,
            builder: (BuildContext context, void Function()? onPressed, Animation<double> progress) {
              return IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.close,
                  color: isDarkTheme ? AppColors.whiteColor : AppColors.appTernaryColor2,
                  size: 40,
                ),
              );
            },
          ),
          overlayStyle: ExpandableFabOverlayStyle(color: AppColors.blackColor.withValues(alpha: 0.5), blur: 5),
          children: [
            FloatingActionButton(
              backgroundColor: AppColors.whiteColor.withValues(alpha: isDarkTheme ? 0.8 : 0.4),
              heroTag: null,
              onPressed: () async {
                await AppUtils.makePhoneCallOrEmail(isPhoneNumber: false, emailAddress: AppConstants.emailId);
              },
              child: Image.asset(ImageConstants.email, height: 30, width: 30),
            ),
            FloatingActionButton(
              backgroundColor: AppColors.whiteColor.withValues(alpha: isDarkTheme ? 0.8 : 0.4),
              heroTag: null,
              child: Image.asset(ImageConstants.whatsapp, height: 30, width: 30),
              onPressed: () {
                AppUtils.openWhatsapp(AppConstants.whatsappUrlStr);
              },
            ),
            FloatingActionButton(
              backgroundColor: AppColors.whiteColor.withValues(alpha: isDarkTheme ? 0.8 : 0.4),
              heroTag: null,
              child: Image.asset(ImageConstants.aboutUs, height: 30, width: 30),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => KnowMoreAboutUs(isDark: isDarkTheme)));
              },
            ),
          ],
        ),
        bottomNavigationBar: (bottomBarPages.length <= maxCount)
            ? MyBottomNavigationBar(
                isDark: isDarkTheme,
                notchController: _controller,
                onTap: (index) {
                  HapticFeedback.lightImpact();
                  _pageController.jumpToPage(index);
                },
              )
            : null,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
      ),
    );
  }

  Future<void> showInitialDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Theme(
          data: Theme.of(context).copyWith(
            dialogTheme: DialogThemeData(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.appPrimaryColor, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          child: AlertDialog(
            backgroundColor: isDarkTheme ? AppColors.blackColor : AppColors.whiteColor,
            title: Stack(
              alignment: Alignment.centerRight,
              children: [
                Positioned(
                  left: 0,
                  top: 10,
                  child: Text(
                    'Connect Us',
                    style: FontTypography.fontStyle16PrimarySemi,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.close,
                      color: isDarkTheme ? AppColors.whiteColor : AppColors.appTernaryColor,
                    ),
                  ),
                ),
              ],
            ),
            content: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    AppLabel(
                      text: AppConstants.nameStr,
                      isRequired: true,
                      style: isDarkTheme ? FontTypography.fontStyle14WhiteMed : FontTypography.fontStyle14TernaryMed,
                    ),
                    sizedBox2(),
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      style: isDarkTheme ? FontTypography.fontStyle12WhiteMed
                              .copyWith(fontSize: Platform.isIOS ? 14 : 12) : FontTypography.fontStyle12BlackMed
                              .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                      decoration: InputDecoration(
                        errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.appPrimaryColor)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.appPrimaryColor)),
                        errorStyle: const TextStyle(color: Colors.red, fontSize: 12.0),
                        focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    sizedBox10(),
                    AppLabel(
                      text: AppConstants.emailIdStr,
                      isRequired: true,
                      style: isDarkTheme ? FontTypography.fontStyle14WhiteMed : FontTypography.fontStyle14TernaryMed,
                    ),
                    sizedBox2(),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      style: isDarkTheme ? FontTypography.fontStyle12WhiteMed
                              .copyWith(fontSize: Platform.isIOS ? 14 : 12) : FontTypography.fontStyle12BlackMed
                              .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                      decoration: InputDecoration(
                        errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.appPrimaryColor)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.appPrimaryColor)),
                        errorStyle: const TextStyle(color: Colors.red, fontSize: 12.0),
                        focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value.trim())) {
                          return 'Enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    sizedBox10(),
                    AppLabel(
                      text: AppConstants.messageStr,
                      isRequired: true,
                      style: isDarkTheme ? FontTypography.fontStyle14WhiteMed : FontTypography.fontStyle14TernaryMed,
                    ),
                    sizedBox2(),
                    TextFormField(
                      controller: messageController,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.done,
                      style: isDarkTheme ? FontTypography.fontStyle12WhiteMed
                              .copyWith(fontSize: Platform.isIOS ? 14 : 12) : FontTypography.fontStyle12BlackMed
                              .copyWith(fontSize: Platform.isIOS ? 14 : 12),
                      decoration: InputDecoration(
                        hintText: AppConstants.typeYourMessageHere,
                        hintStyle:
                            isDarkTheme ? FontTypography.fontStyle12WhiteMed : FontTypography.fontStyle12BlackMed,
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.appPrimaryColor)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.appPrimaryColor)),
                        errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        errorStyle: const TextStyle(color: Colors.red, fontSize: 12.0),
                        focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your message';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Center(
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: MaterialButton(
                      color: AppColors.appPrimaryColor.withValues(alpha: 0.8),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          bool isConnected = await SimpleConnectionChecker.isConnectedToInternet();
                          if (!isConnected) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text('No Internet Connection')));
                          } else {
                            await launchEmail();
                            Navigator.of(context).pop();
                          }
                        }
                      },
                      child: Text(
                        AppConstants.submitStr,
                        style:
                            isDarkTheme ? FontTypography.fontStyle16WhiteSemi : FontTypography.fontStyle16TernarySemi,
                      )),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'info@reynasolutions.com',
      query: Uri.encodeFull(
        'subject=Contact Us Request&body=Name: ${nameController.text}\nEmail: ${emailController.text}\nMessage: ${messageController.text}',
      ),
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
      Future.delayed(const Duration(seconds: 5));
      await clearFieldAfterSend();
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Failed to send email')));
      }
    }
  }

  Future<void> clearFieldAfterSend() async {
    nameController.clear();
    emailController.clear();
    messageController.clear();
  }

  @override
  void dispose() {
    _controller.dispose();
    nameController.clear();
    emailController.clear();
    messageController.clear();
    super.dispose();
  }
}
