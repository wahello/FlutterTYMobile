import 'package:flui/flui.dart' show FLMarqueeLabel;
import 'package:flutter/foundation.dart' show compute;
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/font_size.dart';
import 'package:flutter_ty_mobile/features/home/domain/entity/entities.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:meta/meta.dart' show required;

/// Creates a [FLMarqueeLabel] widget to display a list of texts
/// @author H.C.CHIANG
/// @version 2020/01/10
class MarqueeDisplay extends StatelessWidget {
  final List<dynamic> marquees;

  MarqueeDisplay({
    Key key,
    @required this.marquees,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: compute(_marqueeToString, marquees),
      builder: (context, snapshot) {
        print('marquee display state: '
            '${snapshot.connectionState}, error: ${snapshot.hasError}');
        if (snapshot.connectionState == ConnectionState.done &&
            !snapshot.hasError) {
          return FLMarqueeLabel(
            text: snapshot.data,
            style: new TextStyle(fontSize: FontSize.NORMAL.value),
            loop: true,
            velocity: 0.6,
            height: 26,
            padding: EdgeInsets.symmetric(horizontal: 4),
          );
        } else {
          if (snapshot.hasError) {
            MyLogger.warn(
                msg: 'snapshot error: ${snapshot.error}',
                tag: 'MarqueeDisplay');
          }
          return Icon(Icons.sync_problem);
        }
      },
    );
  }
}

/// Process [MarqueeEntity] content to string
String _marqueeToString(List<dynamic> list) {
  String separator = '        ';
  List<String> contents = new List();
  list.forEach((item) {
    if (item is MarqueeEntity) {
//        print('add marquee string: ${item.content}');
      contents.add(item.content.replaceAll('\n', '\t'));
    } else {
      MyLogger.warn(
          msg: 'error marquee type condition!! item: $item',
          tag: 'MarqueeDisplay');
    }
  });
  return '$separator${contents.join(separator)}';
}
