import 'package:flutter/material.dart';

class GestureButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isSelected;

  GestureButtonWidget({
    required this.icon,
    required this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.blue : Colors.transparent,
              width: 2.0,
            ),
          ),
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.blue : Colors.grey,
          size: 28.0,
        ),
      ),
    );
  }
}
