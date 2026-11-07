import 'package:flutter/material.dart';

class HighlightedText extends StatelessWidget {
  const HighlightedText(
    this.text, {
    super.key,
    required this.style,
    required this.highlightColor,
    this.textAlign = TextAlign.center,
  });

  final String text;
  final TextStyle? style;
  final Color highlightColor;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final parts = text.split('*');
    return Text.rich(
      TextSpan(
        style: style,
        children: [
          for (var i = 0; i < parts.length; i++)
            TextSpan(
              text: parts[i],
              style: i.isOdd ? TextStyle(color: highlightColor) : null,
            ),
        ],
      ),
      textAlign: textAlign,
    );
  }
}
