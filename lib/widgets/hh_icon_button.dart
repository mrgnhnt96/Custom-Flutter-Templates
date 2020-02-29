import 'package:flutter/material.dart';
import 'package:twenty20_mobile/models/hh_icon_theme.dart';

import 'package:twenty20_mobile/styles/icon_themes.dart';

class HHIconButton extends StatelessWidget {
  HHIconButton({
    @required this.style,
    @required this.icon,
    @required this.onPressed,
  }) : super();

  final HHIconTheme style;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Center(
        child: Icon(
          icon,
          color: style.color,
          size: style.size,
        ),
      ),
      // icon: SizedBox(
      //   height: MediaQuery.of(context).size.height * heightPercent,
      //   width: MediaQuery.of(context).size.width * widthPercent,
      //   child: Center(
      //     child: null
      //   ),
      // ),
    );
  }

  factory HHIconButton.primarySmall({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.primarySmall,
    );
  }

  factory HHIconButton.primaryMedium({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.primaryMedium,
    );
  }

  factory HHIconButton.primaryLarge({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.primaryLarge,
    );
  }

  factory HHIconButton.secondarySmall({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.secondarySmall,
    );
  }

  factory HHIconButton.secondaryMedium({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.secondaryMedium,
    );
  }

  factory HHIconButton.secondaryLarge({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.primaryLarge,
    );
  }

  factory HHIconButton.onPrimarySmall({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.onPrimarySmall,
    );
  }

  factory HHIconButton.onPrimaryMedium({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.onPrimaryMedium,
    );
  }

  factory HHIconButton.onPrimaryLarge({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.onPrimaryLarge,
    );
  }

  factory HHIconButton.onSecondarySmall({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.onSecondarySmall,
    );
  }

  factory HHIconButton.onSecondaryMedium({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.onSecondaryMedium,
    );
  }

  factory HHIconButton.onSecondaryLarge({
    @required Function onPressed,
    @required IconData icon,
  }) {
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: IconThemes.onSecondaryLarge,
    );
  }

  factory HHIconButton.colorSmall({
    @required Function onPressed,
    @required IconData icon,
    @required Color color,
  }) {
    HHIconTheme _temp = HHIconTheme(
      size: IconThemes.primarySmall.size,
      color: color,
    );
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: _temp,
    );
  }
  factory HHIconButton.colorMedium({
    @required Function onPressed,
    @required IconData icon,
    @required Color color,
  }) {
    HHIconTheme _temp = HHIconTheme(
      size: IconThemes.primaryMedium.size,
      color: color,
    );
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: _temp,
    );
  }
  factory HHIconButton.colorLarge({
    @required Function onPressed,
    @required IconData icon,
    @required Color color,
  }) {
    HHIconTheme _temp = HHIconTheme(
      size: IconThemes.primaryLarge.size,
      color: color,
    );
    return HHIconButton(
      icon: icon,
      onPressed: onPressed,
      style: _temp,
    );
  }
}
