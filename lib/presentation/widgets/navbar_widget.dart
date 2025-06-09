import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:polizen_app/presentation/widgets/text_widget.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          HeadingWidget(
            'Guten Morgen',
            fontsize: FontSizes.large,
            weight: FontWeight.w700,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.grey.withAlpha(50),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                  child: CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 3.0,
                    animation: true,
                    percent: 0.7,
                    center: HeadingWidget('1'),

                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.blue[200],
                  ),
                ),
                const SizedBox(width: 16),
                Icon(Icons.star),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
