import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_page/configs/constants.dart';
import 'package:my_page/ui/widgets/social_media_button.dart';
import 'package:my_page/ui/widgets/text_link.dart';

class SocialMediaSpace extends StatelessWidget {
  const SocialMediaSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SocialMediaButton(
            icon: FontAwesomeIcons.github, url: Constants.gitHub),
        const SizedBox(
          width: 8,
        ),
        const SocialMediaButton(
            icon: FontAwesomeIcons.linkedin, url: Constants.linkedIn),
        const SizedBox(
          width: 8,
        ),
        TextLink(title: 'monica.henr.abreu@gmail.com', uri: Constants.email)
      ],
    );
  }
}
