import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:polizen_app/core/theme/typography.dart';
import 'package:polizen_app/presentation/pages/player/widgets/make_dismissable_widget.dart';

void showInfoModal(BuildContext context) {
  final size = MediaQuery.sizeOf(context);
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,

    builder: (context) {
      return MakeDismissible(
        child: DraggableScrollableSheet(
          initialChildSize: 0.5,
          maxChildSize: .6,

          builder: (_, controller) => Container(
            decoration: (BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            )),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: ListView(
              children: [
                Container(
                  color: Colors.white,
                  width: size.width,
                  height: size.height,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/polizen-logo-head-icon.svg',
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        'LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum ',
                        style: AppFonts.body,
                      ),
                      Text(
                        'LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum ',
                        style: AppFonts.body,
                      ),
                      Text(
                        'LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum LOOooooorem ipsum ',
                        style: AppFonts.body,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
