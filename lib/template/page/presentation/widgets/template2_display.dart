import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/global.dart';
import 'package:flutter_ty_mobile/core/internal/hex_color.dart';

///@author H.C.CHIANG
///@version 2020/2/18
class Template2Display extends StatelessWidget {
  final String desc;
  final Color bgColor = HexColor.fromHex('#e8e8e8');

  Template2Display({Key key, @required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      constraints: BoxConstraints.tightFor(width: Global.device.width - 16),
      child: Text(desc, style: TextStyle(color: Colors.black87)),
    );
  }
}
