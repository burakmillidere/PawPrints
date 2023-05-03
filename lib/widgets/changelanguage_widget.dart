import 'package:flutter/material.dart';

class ChangeLanguageWidget extends StatefulWidget {
  final String currentLanguage;
  final void Function(String) onLanguageChanged;

  const ChangeLanguageWidget({
    Key? key,
    required this.currentLanguage,
    required this.onLanguageChanged,
  }) : super(key: key);

  @override
  _ChangeLanguageWidgetState createState() => _ChangeLanguageWidgetState();
}

class _ChangeLanguageWidgetState extends State<ChangeLanguageWidget> {
  String selectedLanguage = '';

  @override
  void initState() {
    super.initState();
    selectedLanguage = widget.currentLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Language',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(height: 8.0),
        DropdownButton<String>(
          value: selectedLanguage,
          onChanged: (value) {
            setState(() {
              selectedLanguage = value!;
              widget.onLanguageChanged(selectedLanguage);
            });
          },
          items: [
            DropdownMenuItem(
              value: 'tr',
              child: Text('Turkish'),
            ),
            DropdownMenuItem(
              value: 'en',
              child: Text('English'),
            ),
          ],
        ),
      ],
    );
  }
}
