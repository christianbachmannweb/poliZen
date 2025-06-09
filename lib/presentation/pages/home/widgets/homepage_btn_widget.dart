import 'package:flutter/material.dart';
import 'package:polizen_app/presentation/widgets/text_widget.dart';

class HomepageBtnWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const HomepageBtnWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.withAlpha(50),
        border: Border.all(color: Colors.grey.withAlpha(70)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 8),
            HeadingWidget(
              title,
              fontsize: FontSizes.regular,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
