import 'package:flutter/material.dart';
import '../../widgets/widgets_import.dart';

class SettingsScreen extends StatefulWidget {
  final String currentLanguage;
  final void Function(String) onLanguageChanged;

  const SettingsScreen({
    Key? key,
    required this.currentLanguage,
    required this.onLanguageChanged,
  }) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChangeLanguageWidget(
              currentLanguage: widget.currentLanguage,
              onLanguageChanged: widget.onLanguageChanged,
            ),
            // Add more widgets for other settings as needed
          ],
        ),
      ),
    );
  }
}
