import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/font_size.dart';
import 'package:flutter_ty_mobile/core/internal/themes.dart';

class MessageDisplay extends StatelessWidget {
  final String message;
  final bool smallText;
  final bool highlight;
  final double widthFactor;

  const MessageDisplay({
    Key key,
    @required this.message,
    this.smallText = false,
    this.highlight = false,
    this.widthFactor = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / widthFactor,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.warning,
            size: (smallText) ? 18 : 24,
            color:
                (highlight) ? Themes.defaultErrorColor : Themes.iconColorDark,
          ),
          Text(
            message.split('-')[0].trim(),
            style: TextStyle(
              fontSize:
                  (smallText) ? FontSize.SMALL.value : FontSize.NORMAL.value,
              color: Themes.iconColorDark,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          )
        ],
      ),
    );
  }
}
