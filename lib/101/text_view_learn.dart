import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.userName});
  final String name = 'Ahmet';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name: ${name.length}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: ProjectColors.welcomeColor),
            ),
            Text(
              'Hi $name: ${name.length}',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(userName ?? ''),
            Text(keys.welcomeText),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    color: Colors.yellow,
    wordSpacing: 3,
    letterSpacing: 2,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcomeText = 'Hello';
}
