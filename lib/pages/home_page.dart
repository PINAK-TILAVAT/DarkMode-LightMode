import 'package:darkmode_lightmode/components/box.dart';
import 'package:darkmode_lightmode/components/button.dart';
import 'package:darkmode_lightmode/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: MyBox(
            color: Theme.of(context).colorScheme.surface,
            child: MyButton(
              color: Theme.of(context).colorScheme.secondary,
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
            )),
      ),
    );
  }
}