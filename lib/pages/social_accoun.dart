import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

final Uri _linkedin =
    Uri.parse('https://bd.linkedin.com/in/riduan-rahman-radip-5764711a0');
final Uri _facebook =
    Uri.parse('https://www.facebook.com/profile.php?id=100079136926687');
final Uri _github = Uri.parse('https://github.com/Riduan-Radip');

const email = 'unstablebengali@gmail.com';
const emailurl = 'mailto:$email';

class social_links {
  static Future linkedin() => _linkedinUrl();
  static Future _linkedinUrl() async {
    if (!await launchUrl(_linkedin, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_linkedin';
    }
  }

  static Future facebookurl() => _facebookurl();
  static Future _facebookurl() async {
    if (!await launchUrl(_facebook, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_facebook';
    }
  }

  static Future githuburl() => _githubnUrl();
  static Future _githubnUrl() async {
    if (!await launchUrl(_github, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_github';
    }
  }
}
