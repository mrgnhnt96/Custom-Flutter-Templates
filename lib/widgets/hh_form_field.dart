import 'package:flutter/material.dart';

import 'package:twenty20_mobile/styles/color_themes.dart';
import 'package:twenty20_mobile/styles/text_themes.dart';

class HHFormField extends StatelessWidget {
  const HHFormField({
    Key key,
    String labelText,
    String initialValue,
    TextInputType keyboardType: TextInputType.text,
    @required Function validator,
  })  : _labelText = labelText,
        _initialValue = initialValue,
        _keyboardType = keyboardType,
        _validator = validator,
        super(key: key);

  final String _labelText;
  final String _initialValue;
  final TextInputType _keyboardType;
  final Function _validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      child: TextFormField(
        minLines: 1,
        maxLines: _labelText == 'Message' ? 10 : 2,
        decoration: InputDecoration(
          labelText: _labelText,
          labelStyle: TextThemes.secondaryBody,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorThemes.primary, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorThemes.secondary, width: 1.0),
          ),
        ),
        initialValue: _initialValue,
        validator: _validator,
        style: TextThemes.secondaryBody,
        textInputAction: TextInputAction.done,
        keyboardType: _keyboardType,
      ),
    );
  }
}
