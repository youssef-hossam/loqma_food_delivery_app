import 'package:flutter/material.dart';

/// Renders "All your *cravings*" with the *starred* words in [highlightColor].
/// The stars live in the ARB strings, so each language picks its own highlighted word.
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
