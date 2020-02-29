import 'package:flutter/material.dart';

class HHCard extends Card {
  HHCard({
    Key key,
    Widget child,
  }) : super(
          key: key,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: child,
        );
}
