import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/core/extensions/context_extensions.dart';
import 'package:loqma_food_delivery_app/core/theme/app_colors.dart';
import 'package:loqma_food_delivery_app/core/theme/app_shadows.dart';
import 'package:loqma_food_delivery_app/core/theme/app_spacing.dart';
import 'package:loqma_food_delivery_app/core/widgets/app_icon.dart';
import 'package:loqma_food_delivery_app/core/widgets/loqma_button.dart';

enum AlertTone { danger, warning }

/// Alert dialog بستايل لقمة: أيقونة في دايرة، عنوان، رسالة، وزرار أساسي
/// (وزرار تاني اختياري).
///
/// للأخطاء استخدم [showFailureDialog] بدل ما تستخدمه مباشرة.
class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
    required this.primaryLabel,
    this.onPrimary,
    this.secondaryLabel,
    this.onSecondary,
    this.tone = AlertTone.danger,
  });

  final String icon;
  final String title;
  final String message;
  final String primaryLabel;
  final VoidCallback? onPrimary;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;
  final AlertTone tone;

  @override
  Widget build(BuildContext context) {
    final c = context.loqma;
    final accent = tone == AlertTone.danger ? c.danger : c.warning;
    final accentSoft = tone == AlertTone.danger
        ? c.dangerSoft
        : c.warning.withValues(alpha: 0.12);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s24.w),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 360),
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.fromLTRB(24.w, 28.h, 24.w, 20.h),
              decoration: BoxDecoration(
                color: c.sheet,
                borderRadius: BorderRadius.circular(AppRadius.xl.r),
                boxShadow: AppShadows.float,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // أيقونة في دايرتين: هالة خفيفة + دايرة أغمق
                  Container(
                    width: 72.r,
                    height: 72.r,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: accentSoft.withValues(alpha: 0.6),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      width: 52.r,
                      height: 52.r,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: accentSoft, shape: BoxShape.circle),
                      child: AppIcon(icon, size: 26.r, color: accent),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: context.text.titleLarge,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: context.text.bodyMedium?.copyWith(height: 1.5),
                  ),
                  SizedBox(height: 24.h),
                  LoqmaButton(
                    label: primaryLabel,
                    onPressed: () {
                      Navigator.of(context).pop();
                      onPrimary?.call();
                    },
                  ),
                  if (secondaryLabel != null) ...[
                    SizedBox(height: 4.h),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        onSecondary?.call();
                      },
                      child: Text(
                        secondaryLabel!,
                        style: context.text.labelMedium?.copyWith(color: c.textSecondary),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// يعرض [AppAlertDialog] بأنيميشن pop (scale + fade).
Future<void> showAppAlert(BuildContext context, AppAlertDialog dialog) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: context.loqma.night.withValues(alpha: 0.45),
    transitionDuration: const Duration(milliseconds: 280),
    pageBuilder: (_, __, ___) => dialog,
    transitionBuilder: (_, animation, __, child) {
      final curved = CurvedAnimation(parent: animation, curve: Curves.easeOutBack, reverseCurve: Curves.easeIn);
      return FadeTransition(
        opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
        child: ScaleTransition(scale: Tween(begin: 0.88, end: 1.0).animate(curved), child: child),
      );
    },
  );
}

/// بيحوّل أي [Failure] لـ dialog مناسب (أيقونة + عنوان + رسالة).
///
/// [onRetry] لو اتبعت، هيظهر زرار "حاول تاني" لمشاكل النت.
Future<void> showFailureDialog(
  BuildContext context,
  Failure failure, {
  VoidCallback? onRetry,
}) {
  final s = context.s;

  final AppAlertDialog dialog = switch (failure) {
    NetworkFailure() => AppAlertDialog(
        icon: 'globe',
        tone: AlertTone.warning,
        title: s.errorNetworkTitle,
        message: s.errorNetworkBody,
        primaryLabel: onRetry != null ? s.retry : s.gotIt,
        onPrimary: onRetry,
        secondaryLabel: onRetry != null ? s.gotIt : null,
      ),
    ServerFailure(code: 'INVALID_CREDENTIALS') => AppAlertDialog(
        icon: 'lock',
        title: s.errorLoginTitle,
        message: failure.message,
        primaryLabel: s.gotIt,
      ),
    ServerFailure(code: 'RATE_LIMITED') => AppAlertDialog(
        icon: 'clock',
        tone: AlertTone.warning,
        title: s.errorRateLimitedTitle,
        message: failure.message,
        primaryLabel: s.gotIt,
      ),
    ServerFailure() => AppAlertDialog(
        icon: 'alert',
        title: s.errorGenericTitle,
        message: failure.message,
        primaryLabel: s.gotIt,
      ),
    // متعرضش تفاصيل الـ exception للمستخدم
    UnknownFailure() => AppAlertDialog(
        icon: 'alert',
        title: s.errorGenericTitle,
        message: s.errorGeneric,
        primaryLabel: s.gotIt,
      ),
  };

  return showAppAlert(context, dialog);
}
