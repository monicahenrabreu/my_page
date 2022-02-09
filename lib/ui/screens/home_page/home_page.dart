import 'package:flutter/material.dart';
import 'package:my_page/configs/constants.dart';
import 'package:my_page/ui/widgets/introduction.dart';
import 'package:my_page/ui/widgets/private_projects.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [
            Color(0xFFddd6f3),
            Color(0xFFfaaca8),
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: SingleChildScrollView(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.transparent,
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Introduction(),
                      const SizedBox(
                        height: 48,
                      ),
                      PrivateProjects(
                        projects: Constants.privateProjects,
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
