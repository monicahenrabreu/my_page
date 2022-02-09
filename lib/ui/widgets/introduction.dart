import 'package:flutter/material.dart';
import 'package:my_page/ui/widgets/social_media_space.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Mónica Abreu',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Flutter developer',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 24,
        ),
        const SocialMediaSpace(),
      ],
    );
  }
}
