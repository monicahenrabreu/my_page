import 'package:flutter/material.dart';
import 'package:my_page/configs/constants.dart';
import 'package:my_page/data/models/project.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivateProject extends StatelessWidget {
  const PrivateProject({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          child: Text(
            project.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () => launch(Constants.gitHubMedicamentionApp),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(project.description),
        const SizedBox(
          height: 8,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          for (var functionality in project.functionalities)
            Text('⚈ $functionality'),
        ]),
        const SizedBox(
          height: 24,
        ),
        Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: [
            for (var tag in project.tags)
              Chip(
                label: Text(tag),
              ),
          ],
        ),
      ],
    );
  }
}
