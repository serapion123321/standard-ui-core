import 'package:flutter/material.dart';
import 'package:standard_ui_core/standard_ui_core.dart';

/// Screen Size auto (using mediaquery as a default to get screen size)
class ScreenSizeInitializer extends StatelessWidget {
  final Widget child;

  const ScreenSizeInitializer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final size = MediaQuery.of(context).size;
      if (size.width > 0 && size.height > 0) {
        InitialValue.initScreenSize(size);
      } else {
        debugPrint(
          '⚠️ [standard_ui_core] Warning: screenSize is Size(0, 0). '
        );
      }
    });

    return child;
  }
}


/// Screen Size custom (use for hardcode screen size, simulation, test app, etc)
class ScreenSizeCustomInitializer extends StatelessWidget {
  final Widget child;
  final Size customSize;

  const ScreenSizeCustomInitializer({
    required this.child,
    required this.customSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (customSize.width > 0 && customSize.height > 0) {
        InitialValue.initScreenSize(customSize);
      } else {
        debugPrint(
            '⚠️ [standard_ui_core] Warning: screenSize is Size(0, 0). '
        );
      }
    });

    return child;
  }
}

