import 'package:flutter/material.dart';

class PageTransitionSwitcher extends StatelessWidget {
  final Widget child;
  final int direction; // 1 for forward, -1 for backward

  const PageTransitionSwitcher({
    Key? key,
    required this.child,
    required this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(seconds: 10),
      transitionBuilder: (Widget child, Animation<double> animation) {
        final offsetAnimation = Tween<Offset>(
          begin: Offset(direction.toDouble(), 0.0),
          end: Offset.zero,
        ).animate(animation);

        final fadeAnimation = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(animation);

        return ClipRect(
          child: SlideTransition(
            position: offsetAnimation,
            child: FadeTransition(
              opacity: fadeAnimation,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
