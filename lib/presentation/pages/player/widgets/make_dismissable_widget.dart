import 'package:flutter/material.dart';

class MakeDismissible extends StatelessWidget {
  final Widget child;

  const MakeDismissible({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {}, // verhindert, dass Kind getappt wird
        child: child,
      ),
    );
  }
}
