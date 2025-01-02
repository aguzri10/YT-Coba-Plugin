import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmers {
  static Widget shimmer({
    required Color baseColor,
    required Color highlightColor,
    required Widget child,
  }) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: child,
    );
  }

  static Widget loading({
    required bool loading,
    Widget? child,
    required Widget onLoading,
  }) {
    return Visibility(
      visible: loading,
      replacement: child ?? const SizedBox(),
      child: shimmer(
        baseColor: Colors.blue.withValues(alpha: 0.3),
        highlightColor: Colors.blue.withValues(alpha: 0.6),
        child: onLoading,
      ),
    );
  }
}
