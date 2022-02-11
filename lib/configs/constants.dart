import 'package:my_page/data/models/project.dart';

class Constants {
  static const String gitHub = 'https://github.com/monicahenrabreu/';
  static const String gitHubMedicamentionApp =
      'https://github.com/monicahenrabreu/medication_app';
  static const String gitHubLembretes =
      'https://github.com/monicahenrabreu/lembretes';
  static const String linkedIn =
      'https://www.linkedin.com/in/m%C3%B3nica-abreu-b92b1210b/';
  static String email = Uri(
      scheme: 'mailto',
      path: 'monica.henr.abreu@gmail.com',
      query: 'subject=Default Subject&body=Default body').toString();

  static Project medicationApp = Project(
    title: 'Medicaments app',
    description:
        'Helps the user to reminder all the medication throughout the day by notifications.',
    functionalities: [
      'Implementation of a calendar to show the medication throughout the days with table_calendar plugin',
      'Save the medication with Hive - the key-value database',
      'Notify the user to take his medication throughout Flutter Local Notifications',
      'BLoC as state management',
      'Localizations with English and Portuguese languages'
    ],
    tags: [
      'BLoC',
      'Flutter Local Notifications',
      'Hive',
      'Localizations',
      'table_calendar',
      'Code Magic'
    ],
  );

  static Project reminders = Project(
    title: 'Lembretes',
    description: 'Where the user can save and see his reminders.',
    functionalities: [
      'SQLite to save the reminders',
      'Provider as state management',
      'Implementation of 2 Themes (light and dark theme) and changing it according to theme based on device settings',
      'Localizations with English and Portuguese languages'
    ],
    tags: ['Provider', 'sqflite', 'Localizations', 'Theme'],
  );

  static List<Project> privateProjects = [medicationApp, reminders];
}
