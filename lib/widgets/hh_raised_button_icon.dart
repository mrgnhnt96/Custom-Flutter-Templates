import 'package:flutter/material.dart';
import 'package:twenty20_mobile/models/hh_icon_theme.dart';
import 'package:twenty20_mobile/styles/color_themes.dart';
import 'package:twenty20_mobile/styles/icon_themes.dart';

import 'package:twenty20_mobile/styles/text_themes.dart';
import 'package:twenty20_mobile/widgets/hh_icon.dart';
import 'package:twenty20_mobile/widgets/hh_raised_button.dart';

class HHRaisedButtonIcon extends StatelessWidget {
  HHRaisedButtonIcon({
    this.heightPercent: 0.055,
    this.fontColor,
    @required this.forceOneLine,
    @required this.widthPercent,
    @required this.size,
    @required this.color,
    @required this.icon,
    @required this.forceIconLeft,
    @required this.iconStyle,
    @required this.label,
    @required this.onPressed,
  }) : super();

  final Color fontColor;
  final bool forceOneLine;
  final bool forceIconLeft;
  final double heightPercent;
  final double widthPercent;
  final Color color;
  final double size;
  final HHIconTheme iconStyle;
  final String label;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    Color _tempfontColor = fontColor != null ? fontColor : iconStyle.color;
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onPressed,
      color: color,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * heightPercent,
        width: MediaQuery.of(context).size.width * widthPercent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            if (forceIconLeft)
              HHIcon(
                icon,
                style: iconStyle,
              ),
            Text(
              label,
              maxLines: forceOneLine ? 1 : null,
              style: TextThemes.button.copyWith(
                color: _tempfontColor,
                fontSize: size,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (!forceIconLeft)
              HHIcon(
                icon,
                style: iconStyle,
              ),
          ],
        ),
      ),
    );
  }

  factory HHRaisedButtonIcon.primarySmall({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onPrimarySmall,
      widthPercent: HHRaisedButton.smallButtonWidth,
      color: ColorThemes.primary,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }

  factory HHRaisedButtonIcon.primaryMedium({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onPrimaryMedium,
      widthPercent: HHRaisedButton.mediumButtonWidth,
      color: ColorThemes.primary,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }

  factory HHRaisedButtonIcon.primaryLarge({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onPrimaryMedium,
      widthPercent: HHRaisedButton.largeButtonWidth,
      color: ColorThemes.primary,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }

  factory HHRaisedButtonIcon.secondarySmall({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onSecondarySmall,
      widthPercent: HHRaisedButton.smallButtonWidth,
      color: ColorThemes.secondary,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }

  factory HHRaisedButtonIcon.secondaryMedium({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onSecondaryMedium,
      widthPercent: HHRaisedButton.mediumButtonWidth,
      color: ColorThemes.secondary,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }

  factory HHRaisedButtonIcon.secondaryLarge({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onSecondaryMedium,
      widthPercent: HHRaisedButton.largeButtonWidth,
      color: ColorThemes.secondary,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }

  factory HHRaisedButtonIcon.colorSmall({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
    @required Color color,
    @required Color fontColor,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onSecondarySmall,
      widthPercent: HHRaisedButton.smallButtonWidth,
      color: color,
      fontColor: fontColor,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }

  factory HHRaisedButtonIcon.colorMedium({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
    @required Color color,
    @required Color fontColor,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onSecondaryMedium,
      widthPercent: HHRaisedButton.mediumButtonWidth,
      color: color,
      fontColor: fontColor,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }

  factory HHRaisedButtonIcon.colorLarge({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
    bool forceOneLine: false,
    bool forceIconLeft: false,
    @required Color color,
    @required Color fontColor,
  }) {
    return HHRaisedButtonIcon(
      iconStyle: IconThemes.onSecondaryMedium,
      widthPercent: HHRaisedButton.largeButtonWidth,
      color: color,
      fontColor: fontColor,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      icon: icon,
      forceOneLine: forceOneLine,
      forceIconLeft: forceIconLeft,
    );
  }
}
