import 'package:reyna_solution_app/src/core/constants/constants_export.dart';
import 'package:url_launcher/url_launcher.dart';

/// Created by: Jinal Soni
/// Date: 26/03/25
/// Description: []

class AppUtils {
  static String toTitleCase(String text) {
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  static List<String> listPoints(String selectedComprehensive) {
    switch (selectedComprehensive) {
      case AppConstants.analysis:
        return analysisList;
      case AppConstants.design:
        return designList;
      case AppConstants.development:
        return developmentList;
      case AppConstants.testing:
        return testingList;
      case AppConstants.deployment:
        return deploymentList;
      case AppConstants.maintenance:
        return maintenanceList;
      default:
        return analysisList;
    }
  }

  static Future<void> openGoogleMap(String googleMapsUrl) async {
    final Uri url = Uri.parse(googleMapsUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not open Google Maps.';
    }
  }

  static Future<void> openSocialMediaApp(String socialMediaUrl) async {
    final Uri url = Uri.parse(socialMediaUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.platformDefault);
    } else {
      throw 'Could not open Social Media.';
    }
  }

  static Future<void> openWhatsapp(String whatsappUrl) async {
    final Uri url = Uri.parse(whatsappUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.platformDefault);
    } else {
      throw 'Could not open Whatsapp.';
    }
  }

  static String selectedComApproachDetails(String selectedComprehensive) {
    switch (selectedComprehensive) {
      case AppConstants.analysis:
        return AppConstants.analysisSubString;
      case AppConstants.design:
        return AppConstants.designSubString;
      case AppConstants.development:
        return AppConstants.deploymentSubString;
      case AppConstants.testing:
        return AppConstants.testingSubString;
      case AppConstants.deployment:
        return AppConstants.deploymentSubString;
      case AppConstants.maintenance:
        return AppConstants.maintenanceSubString;
      default:
        return AppConstants.analysisSubString;
    }
  }

  static Future<void> makePhoneCallOrEmail(
      {required bool isPhoneNumber, String phoneNumber = '', String emailAddress = ''}) async {
    if (isPhoneNumber) {
      final Uri url = Uri.parse("tel:$phoneNumber");
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    } else {
      final Uri emailUri = Uri.parse("mailto:$emailAddress");
      if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
      } else {
        throw 'Could not launch $emailUri';
      }
    }
  }


}
