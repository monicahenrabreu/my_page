import 'package:flutter/material.dart';
import 'package:my_page/data/models/project.dart';
import 'package:my_page/ui/widgets/private_project.dart';

class PrivateProjects extends StatelessWidget {
  const PrivateProjects({Key? key, required this.projects}) : super(key: key);

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'Private projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 24,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          for (var project in projects)
            Padding(
              padding: const EdgeInsets.only(bottom: 36.0),
              child: PrivateProject(project: project),
            )
        ]),
      ],
    );
  }
}
