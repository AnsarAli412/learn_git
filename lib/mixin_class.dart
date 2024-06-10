import 'package:flutter/material.dart';

mixin class InstaUi{
  listTile(Widget? title, [Widget? trailing]) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 20) ,
      title: title,
      trailing: trailing,
    );
  }
}
