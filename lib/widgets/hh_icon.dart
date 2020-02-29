import 'package:flutter/material.dart';
import 'package:twenty20_mobile/models/hh_icon_theme.dart';
import 'package:twenty20_mobile/styles/icon_themes.dart';
export 'package:twenty20_mobile/models/hh_icon_theme.dart';

class HHIcon extends StatelessWidget {
  HHIcon(
    this.icon, {
    @required this.style,
  }) : super();

  final IconData icon;
  final HHIconTheme style;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: style.color,
      size: style.size,
    );
  }

  factory HHIcon.primarySmall(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.primarySmall,
    );
  }

  factory HHIcon.primaryMedium(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.primaryMedium,
    );
  }

  factory HHIcon.primaryLarge(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.primaryLarge,
    );
  }

  factory HHIcon.secondarySmall(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.secondarySmall,
    );
  }

  factory HHIcon.secondaryMedium(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.secondaryMedium,
    );
  }

  factory HHIcon.secondaryLarge(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.secondaryLarge,
    );
  }

  factory HHIcon.onPrimarySmall(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.onPrimarySmall,
    );
  }

  factory HHIcon.onPrimaryMedium(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.onPrimaryMedium,
    );
  }

  factory HHIcon.onPrimaryLarge(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.onPrimaryLarge,
    );
  }

  factory HHIcon.onSecondarySmall(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.onSecondarySmall,
    );
  }

  factory HHIcon.onSecondaryMedium(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.onSecondaryMedium,
    );
  }

  factory HHIcon.onSecondaryLarge(IconData icon) {
    return HHIcon(
      icon,
      style: IconThemes.onSecondaryLarge,
    );
  }

  factory HHIcon.colorSmall(IconData icon, {@required Color color}) {
    HHIconTheme _temp = HHIconTheme(
      size: IconThemes.primarySmall.size,
      color: color,
    );
    return HHIcon(
      icon,
      style: _temp,
    );
  }

  factory HHIcon.colorMedium(IconData icon, {@required Color color}) {
    HHIconTheme _temp = HHIconTheme(
      size: IconThemes.primaryMedium.size,
      color: color,
    );
    return HHIcon(
      icon,
      style: _temp,
    );
  }

  factory HHIcon.colorLarge(IconData icon, {@required Color color}) {
    HHIconTheme _temp = HHIconTheme(
      size: IconThemes.primaryLarge.size,
      color: color,
    );
    return HHIcon(
      icon,
      style: _temp,
    );
  }
}
