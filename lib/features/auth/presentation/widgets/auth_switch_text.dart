import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';

class AuthSwitchText extends StatelessWidget {
  const AuthSwitchText({super.key, required this.question, required this.action, required this.onTap});

  final String question;
  final String action;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final style = context.text.bodyMedium;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question, style: style?.copyWith(color: context.loqma.textSecondary)),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(action, style: style?.copyWith(color: context.loqma.primary, fontWeight: FontWeight.w700)),
        ),
      ],
    );
  }
}
