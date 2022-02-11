import 'package:flutter/material.dart';
import 'package:my_page/data/models/project.dart';
import 'package:my_page/ui/widgets/text_link.dart';

class PrivateProject extends StatelessWidget {
  const PrivateProject({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLink(
          title: project.title,
          uri: project.uri,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 16,
        ),
        SelectableText(project.description),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            for (var functionality in project.functionalities)
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: SelectableText('- $functionality'),
              ),
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: [
            for (var tag in project.tags)
              Chip(
                label: SelectableText(tag),
              ),
          ],
        ),
      ],
    );
  }
}
