import 'package:flutter/material.dart';
import 'package:polizen_app/presentation/pages/01_home/widgets/homepage_btn_widget.dart';

class HomePageBtnRowWidget extends StatelessWidget {
  const HomePageBtnRowWidget({
    super.key,
    required this.btn1,
    required this.btn2,
    required this.onTapped1,
    required this.onTapped2,

    required this.icon1,
    required this.icon2,
  });
  final String btn1;
  final String btn2;
  final IconData icon1;
  final IconData icon2;
  final VoidCallback onTapped1;
  final VoidCallback onTapped2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Expanded(
            child: HomepageBtnWidget(
              title: btn1,
              icon: icon1,
              onTapped: onTapped1,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: HomepageBtnWidget(
              title: btn2,
              icon: icon2,
              onTapped: onTapped2,
            ),
          ),
        ],
      ),
    );
  }
}
