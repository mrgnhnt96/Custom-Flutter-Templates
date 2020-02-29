import 'package:flutter/material.dart';

import 'package:twenty20_mobile/styles/text_themes.dart';
import 'package:twenty20_mobile/widgets/hh_icon_button.dart';

class HHAppBar extends AppBar {
  HHAppBar({
    Key key,
    Color color: Colors.transparent,
    String title,
    bool showShadow: false,
    Widget leftAction: const SizedBox(width: 0),
    Widget rightAction: const SizedBox(width: 0),
    bool displayRoadLine: true,
    @required BuildContext context,
  }) : super(
          key: key,
          title: Text(
            title,
            style: TextThemes.secondaryHeader5,
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: color,
          actions: <Widget>[
            leftAction,
            HHIconButton.secondarySmall(
              icon: Icons.notifications_active,
              onPressed: () {},
            ),
            rightAction,
          ],
        );
}
