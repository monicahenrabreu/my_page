import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_page/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({Key? key, required this.icon, required this.url}) : super(key: key);

  final IconData icon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: FaIcon(icon),
        onPressed: () => launchURL(url));
  }
}
