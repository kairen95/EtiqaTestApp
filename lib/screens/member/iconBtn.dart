import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final Widget _icon;

  IconBtn(this._icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _icon,
    );
  }
}
