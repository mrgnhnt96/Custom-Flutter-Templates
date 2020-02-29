import 'package:flutter/material.dart';
import 'package:twenty20_mobile/styles/icon_themes.dart';

import 'package:twenty20_mobile/styles/text_themes.dart';
import 'package:twenty20_mobile/widgets/hh_icon.dart';

class HHFlatButtonIcon extends StatelessWidget {
  HHFlatButtonIcon({
    @required this.size,
    @required this.icon,
    @required this.iconStyle,
    @required this.label,
    @required this.onPressed,
  }) : super();

  final double size;
  final HHIconTheme iconStyle;
  final String label;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      label: Center(
        child: Text(
          label.toUpperCase(),
          style: TextThemes.button.copyWith(
            color: iconStyle.color,
            fontSize: size,
          ),
        ),
      ),
      icon: HHIcon(
        icon,
        style: iconStyle,
      ),
    );
  }

  factory HHFlatButtonIcon.primarySmall({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.primarySmall,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.primaryMedium({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.primaryMedium,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.primaryLarge({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.primaryLarge,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.secondarySmall({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.secondarySmall,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.secondaryMedium({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.secondaryMedium,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.secondaryLarge({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.secondaryLarge,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.onPrimarySmall({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.onPrimarySmall,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.onPrimaryMedium({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.onPrimaryMedium,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.onPrimaryLarge({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.onPrimaryLarge,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.onSecondarySmall({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.onSecondarySmall,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonSmall,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.onSecondaryMedium({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.onSecondaryMedium,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonMedium,
      icon: icon,
    );
  }

  factory HHFlatButtonIcon.onSecondaryLarge({
    @required Function onPressed,
    @required String label,
    @required IconData icon,
  }) {
    return HHFlatButtonIcon(
      iconStyle: IconThemes.onSecondaryLarge,
      label: label,
      onPressed: onPressed,
      size: TextThemes.buttonLarge,
      icon: icon,
    );
  }
}
