import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/local_strings.dart';
import 'package:flutter_ty_mobile/features/general/bloc_widget_export.dart';
import 'package:flutter_ty_mobile/features/general/toast_widget_export.dart';
import 'package:flutter_ty_mobile/features/home/home_inject.dart';
import 'package:flutter_ty_mobile/features/route_page_export.dart';
import 'package:flutter_ty_mobile/injection_container.dart';
import 'package:flutter_ty_mobile/mylogger.dart';
import 'package:super_enum/super_enum.dart';

class GameWebControl extends StatefulWidget {
  final String url;

  GameWebControl(this.url);

  @override
  _GameWebControlState createState() => _GameWebControlState();
}

class _GameWebControlState extends State<GameWebControl> with AfterLayoutMixin {
  var dismiss;
  String target;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size(60, 60)),
      color: Colors.transparent,
      child: FutureBuilder(
        future: sl.get<HomeGameBloc>().requestGameUrl(widget.url),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              !snapshot.hasError) {
            MyLogger.info(
                msg: 'openning game: ${snapshot.data}', tag: 'GameWebControl');
            target = '${snapshot.data}';
            try {
              dismiss();
            } catch (e) {}
            Future.delayed(Duration(milliseconds: 500), () {
              Navigator.pop(context);
              RouterNavigate.switchScreen(web: true, webArg: target);
            });
            return SizedBox.shrink();
          } else if (snapshot.hasError) {
            MyLogger.warn(
              msg: 'snapshot error: ${snapshot.error}',
              tag: 'GameWebControl',
            );
            try {
              dismiss();
            } catch (e) {}
            Future.delayed(Duration(milliseconds: 3100), () {
              Navigator.pop(context);
            });
            return ToastError(message: localeStr.messageErrorLoadingGame);
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    dismiss = FLToast.loading(text: localeStr.messageWait);
  }
}
