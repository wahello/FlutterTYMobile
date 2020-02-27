import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_ty_mobile/features/general/data/holds/user_data.dart';

import '../router/router.gr.dart';
import '../widget_res_export.dart';
import 'feature_screen_inherited_widget.dart';

part 'screen_drawer.dart';
part 'screen_menu_bar.dart';
part 'screen_navigation_bar.dart';

///@author H.C.CHIANG
///@version 2020/2/26
class FeatureScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewState = FeatureScreenInheritedWidget.of(context);
    return Scaffold(
      key: viewState.scaffoldKey,
      appBar: ScreenMenuBar(),
      drawer: new ScreenDrawer(),
      bottomNavigationBar: ScreenNavigationBar(),
//      body: Center(
//        child: Observer(builder: (_) {
//          final route = viewState.store.pageInfo.toString() ?? '?';
//          return Text(route);
//        }),
//      ),
      /* Main Content (switch placeholder with Router) */
      body: Navigator(
        key: Router.navigator.key,
        onGenerateRoute: Router.onGenerateRoute,
      ),
    );
  }
}
